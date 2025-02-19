
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {void* synmapen_to_hashtoeplitz; void* mode_keymode; } ;
struct TYPE_4__ {void* mode_pkd; } ;
struct TYPE_6__ {TYPE_2__ basicvirtual; TYPE_1__ manual; } ;
struct fw_rss_glb_config_cmd {TYPE_3__ u; void* retval_len16; void* op_to_write; } ;
struct adapter {int dummy; } ;
typedef int c ;


 int EINVAL ;
 unsigned int FW_LEN16 (struct fw_rss_glb_config_cmd) ;
 int FW_RSS_GLB_CONFIG_CMD ;
 unsigned int FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL ;
 unsigned int FW_RSS_GLB_CONFIG_CMD_MODE_MANUAL ;
 unsigned int F_FW_CMD_REQUEST ;
 unsigned int F_FW_CMD_WRITE ;
 unsigned int V_FW_CMD_OP (int ) ;
 unsigned int V_FW_RSS_GLB_CONFIG_CMD_MODE (unsigned int) ;
 void* cpu_to_be32 (unsigned int) ;
 int memset (struct fw_rss_glb_config_cmd*,int ,int) ;
 int t4_wr_mbox (struct adapter*,int,struct fw_rss_glb_config_cmd*,int,int *) ;

int t4_config_glbl_rss(struct adapter *adapter, int mbox, unsigned int mode,
         unsigned int flags)
{
 struct fw_rss_glb_config_cmd c;

 memset(&c, 0, sizeof(c));
 c.op_to_write = cpu_to_be32(V_FW_CMD_OP(FW_RSS_GLB_CONFIG_CMD) |
        F_FW_CMD_REQUEST | F_FW_CMD_WRITE);
 c.retval_len16 = cpu_to_be32(FW_LEN16(c));
 if (mode == FW_RSS_GLB_CONFIG_CMD_MODE_MANUAL) {
  c.u.manual.mode_pkd =
   cpu_to_be32(V_FW_RSS_GLB_CONFIG_CMD_MODE(mode));
 } else if (mode == FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL) {
  c.u.basicvirtual.mode_keymode =
   cpu_to_be32(V_FW_RSS_GLB_CONFIG_CMD_MODE(mode));
  c.u.basicvirtual.synmapen_to_hashtoeplitz = cpu_to_be32(flags);
 } else
  return -EINVAL;
 return t4_wr_mbox(adapter, mbox, &c, sizeof(c), ((void*)0));
}
