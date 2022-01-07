
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_vi_cmd {int type_to_viid; void* alloc_to_len16; void* op_to_vfn; } ;
struct adapter {int dummy; } ;
typedef int c ;


 int FW_LEN16 (struct fw_vi_cmd) ;
 int FW_VI_CMD ;
 int F_FW_CMD_EXEC ;
 int F_FW_CMD_REQUEST ;
 int F_FW_VI_CMD_FREE ;
 int V_FW_CMD_OP (int ) ;
 int V_FW_VI_CMD_PFN (unsigned int) ;
 int V_FW_VI_CMD_VFN (unsigned int) ;
 int V_FW_VI_CMD_VIID (unsigned int) ;
 int cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_vi_cmd*,int ,int) ;
 int t4_wr_mbox (struct adapter*,unsigned int,struct fw_vi_cmd*,int,struct fw_vi_cmd*) ;

int t4_free_vi(struct adapter *adap, unsigned int mbox, unsigned int pf,
        unsigned int vf, unsigned int viid)
{
 struct fw_vi_cmd c;

 memset(&c, 0, sizeof(c));
 c.op_to_vfn = cpu_to_be32(V_FW_CMD_OP(FW_VI_CMD) |
      F_FW_CMD_REQUEST |
      F_FW_CMD_EXEC |
      V_FW_VI_CMD_PFN(pf) |
      V_FW_VI_CMD_VFN(vf));
 c.alloc_to_len16 = cpu_to_be32(F_FW_VI_CMD_FREE | FW_LEN16(c));
 c.type_to_viid = cpu_to_be16(V_FW_VI_CMD_VIID(viid));

 return t4_wr_mbox(adap, mbox, &c, sizeof(c), &c);
}
