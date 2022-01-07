
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int p_dev; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,int,int) ;
 int IGU_CLEANUP_CLEANUP_SET ;
 int IGU_CLEANUP_CLEANUP_TYPE ;
 int IGU_CLEANUP_COMMAND_TYPE ;
 int IGU_CLEANUP_SLEEP_LENGTH ;
 int IGU_CMD_INT_ACK_BASE ;
 int IGU_COMMAND_TYPE_SET ;
 int IGU_CTRL_CMD_TYPE_WR ;
 int IGU_CTRL_REG_FID ;
 int IGU_CTRL_REG_PXP_ADDR ;
 int IGU_CTRL_REG_TYPE ;
 int IGU_REG_CLEANUP_STATUS_0 ;
 int IGU_REG_CLEANUP_STATUS_4 ;
 int IGU_REG_COMMAND_REG_32LSB_DATA ;
 int IGU_REG_COMMAND_REG_CTRL ;
 int OSAL_BARRIER (int ) ;
 int OSAL_BUILD_BUG_ON (int) ;
 int OSAL_MMIOWB (int ) ;
 int OSAL_MSLEEP (int) ;
 int SET_FIELD (int,int ,int) ;
 int ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

__attribute__((used)) static void ecore_int_igu_cleanup_sb(struct ecore_hwfn *p_hwfn,
         struct ecore_ptt *p_ptt,
         u16 igu_sb_id,
         bool cleanup_set,
         u16 opaque_fid)
{
 u32 cmd_ctrl = 0, val = 0, sb_bit = 0, sb_bit_addr = 0, data = 0;
 u32 pxp_addr = IGU_CMD_INT_ACK_BASE + igu_sb_id;
 u32 sleep_cnt = IGU_CLEANUP_SLEEP_LENGTH;
 u8 type = 0;

 OSAL_BUILD_BUG_ON((IGU_REG_CLEANUP_STATUS_4 -
      IGU_REG_CLEANUP_STATUS_0) != 0x200);






 SET_FIELD(data, IGU_CLEANUP_CLEANUP_SET, cleanup_set ? 1 : 0);
 SET_FIELD(data, IGU_CLEANUP_CLEANUP_TYPE, type);
 SET_FIELD(data, IGU_CLEANUP_COMMAND_TYPE, IGU_COMMAND_TYPE_SET);


 SET_FIELD(cmd_ctrl, IGU_CTRL_REG_PXP_ADDR, pxp_addr);
 SET_FIELD(cmd_ctrl, IGU_CTRL_REG_FID, opaque_fid);
 SET_FIELD(cmd_ctrl, IGU_CTRL_REG_TYPE, IGU_CTRL_CMD_TYPE_WR);

 ecore_wr(p_hwfn, p_ptt, IGU_REG_COMMAND_REG_32LSB_DATA, data);

 OSAL_BARRIER(p_hwfn->p_dev);

 ecore_wr(p_hwfn, p_ptt, IGU_REG_COMMAND_REG_CTRL, cmd_ctrl);


 OSAL_MMIOWB(p_hwfn->p_dev);


 sb_bit = 1 << (igu_sb_id % 32);
 sb_bit_addr = igu_sb_id / 32 * sizeof(u32);

 sb_bit_addr += IGU_REG_CLEANUP_STATUS_0 + (0x80 * type);


 while (--sleep_cnt) {
  val = ecore_rd(p_hwfn, p_ptt, sb_bit_addr);
  if ((val & sb_bit) == (cleanup_set ? sb_bit : 0))
   break;
  OSAL_MSLEEP(5);
 }

 if (!sleep_cnt)
  DP_NOTICE(p_hwfn, 1,
     "Timeout waiting for clear status 0x%08x [for sb %d]\n",
     val, igu_sb_id);
}
