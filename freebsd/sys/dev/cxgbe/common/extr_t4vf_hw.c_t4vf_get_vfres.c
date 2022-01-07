
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vf_resources {int nethctrl; int wx_caps; int r_caps; int nexactf; int nvi; int tc; int pmask; int neq; int niq; int niqflint; } ;
struct fw_pfvf_cmd {int r_caps_to_nethctrl; int tc_to_nexactf; int type_to_neq; int niqflint_niq; void* retval_len16; void* op_to_vfn; } ;
struct TYPE_2__ {struct vf_resources vfres; } ;
struct adapter {TYPE_1__ params; } ;
typedef int cmd ;


 int FW_LEN16 (struct fw_pfvf_cmd) ;
 int FW_PFVF_CMD ;
 int FW_SUCCESS ;
 int F_FW_CMD_READ ;
 int F_FW_CMD_REQUEST ;
 int G_FW_PFVF_CMD_NEQ (int ) ;
 int G_FW_PFVF_CMD_NETHCTRL (int ) ;
 int G_FW_PFVF_CMD_NEXACTF (int ) ;
 int G_FW_PFVF_CMD_NIQ (int ) ;
 int G_FW_PFVF_CMD_NIQFLINT (int ) ;
 int G_FW_PFVF_CMD_NVI (int ) ;
 int G_FW_PFVF_CMD_PMASK (int ) ;
 int G_FW_PFVF_CMD_R_CAPS (int ) ;
 int G_FW_PFVF_CMD_TC (int ) ;
 int G_FW_PFVF_CMD_WX_CAPS (int ) ;
 int V_FW_CMD_OP (int ) ;
 int be32_to_cpu (int ) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_pfvf_cmd*,int ,int) ;
 int t4vf_wr_mbox (struct adapter*,struct fw_pfvf_cmd*,int,struct fw_pfvf_cmd*) ;

int t4vf_get_vfres(struct adapter *adapter)
{
 struct vf_resources *vfres = &adapter->params.vfres;
 struct fw_pfvf_cmd cmd, rpl;
 int v;
 u32 word;





 memset(&cmd, 0, sizeof(cmd));
 cmd.op_to_vfn = cpu_to_be32(V_FW_CMD_OP(FW_PFVF_CMD) |
        F_FW_CMD_REQUEST |
        F_FW_CMD_READ);
 cmd.retval_len16 = cpu_to_be32(FW_LEN16(cmd));
 v = t4vf_wr_mbox(adapter, &cmd, sizeof(cmd), &rpl);
 if (v != FW_SUCCESS)
  return v;




 word = be32_to_cpu(rpl.niqflint_niq);
 vfres->niqflint = G_FW_PFVF_CMD_NIQFLINT(word);
 vfres->niq = G_FW_PFVF_CMD_NIQ(word);

 word = be32_to_cpu(rpl.type_to_neq);
 vfres->neq = G_FW_PFVF_CMD_NEQ(word);
 vfres->pmask = G_FW_PFVF_CMD_PMASK(word);

 word = be32_to_cpu(rpl.tc_to_nexactf);
 vfres->tc = G_FW_PFVF_CMD_TC(word);
 vfres->nvi = G_FW_PFVF_CMD_NVI(word);
 vfres->nexactf = G_FW_PFVF_CMD_NEXACTF(word);

 word = be32_to_cpu(rpl.r_caps_to_nethctrl);
 vfres->r_caps = G_FW_PFVF_CMD_R_CAPS(word);
 vfres->wx_caps = G_FW_PFVF_CMD_WX_CAPS(word);
 vfres->nethctrl = G_FW_PFVF_CMD_NETHCTRL(word);

 return 0;
}
