
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_vi_enable_cmd {void* ien_to_len16; void* op_to_viid; } ;
struct adapter {int dummy; } ;
typedef int c ;


 int FW_LEN16 (struct fw_vi_enable_cmd) ;
 int FW_VI_ENABLE_CMD ;
 int F_FW_CMD_EXEC ;
 int F_FW_CMD_REQUEST ;
 int V_FW_CMD_OP (int ) ;
 int V_FW_VI_ENABLE_CMD_DCB_INFO (int) ;
 int V_FW_VI_ENABLE_CMD_EEN (int) ;
 int V_FW_VI_ENABLE_CMD_IEN (int) ;
 int V_FW_VI_ENABLE_CMD_VIID (unsigned int) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_vi_enable_cmd*,int ,int) ;
 int t4_wr_mbox_ns (struct adapter*,unsigned int,struct fw_vi_enable_cmd*,int,int *) ;

int t4_enable_vi_params(struct adapter *adap, unsigned int mbox,
   unsigned int viid, bool rx_en, bool tx_en, bool dcb_en)
{
 struct fw_vi_enable_cmd c;

 memset(&c, 0, sizeof(c));
 c.op_to_viid = cpu_to_be32(V_FW_CMD_OP(FW_VI_ENABLE_CMD) |
       F_FW_CMD_REQUEST | F_FW_CMD_EXEC |
       V_FW_VI_ENABLE_CMD_VIID(viid));
 c.ien_to_len16 = cpu_to_be32(V_FW_VI_ENABLE_CMD_IEN(rx_en) |
         V_FW_VI_ENABLE_CMD_EEN(tx_en) |
         V_FW_VI_ENABLE_CMD_DCB_INFO(dcb_en) |
         FW_LEN16(c));
 return t4_wr_mbox_ns(adap, mbox, &c, sizeof(c), ((void*)0));
}
