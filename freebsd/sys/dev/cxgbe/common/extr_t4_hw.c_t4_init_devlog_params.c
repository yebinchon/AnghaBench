
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct fw_devlog_e {int dummy; } ;
struct fw_devlog_cmd {int start; unsigned int size; int memsize_devlog; int memtype; int memtype_devlog_memaddr16_devlog; void* retval_len16; void* op_to_write; } ;
struct devlog_params {int start; unsigned int size; int memsize_devlog; int memtype; int memtype_devlog_memaddr16_devlog; void* retval_len16; void* op_to_write; } ;
struct TYPE_2__ {struct fw_devlog_cmd devlog; } ;
struct adapter {int mbox; TYPE_1__ params; } ;
typedef int devlog_cmd ;


 int A_PCIE_FW_PF ;
 int ENXIO ;
 int FW_DEVLOG_CMD ;
 int FW_LEN16 (struct fw_devlog_cmd) ;
 int F_FW_CMD_READ ;
 int F_FW_CMD_REQUEST ;
 int G_FW_DEVLOG_CMD_MEMADDR16_DEVLOG (unsigned int) ;
 int G_FW_DEVLOG_CMD_MEMTYPE_DEVLOG (unsigned int) ;
 int G_PCIE_FW_PF_DEVLOG_ADDR16 (scalar_t__) ;
 int G_PCIE_FW_PF_DEVLOG_MEMTYPE (scalar_t__) ;
 unsigned int G_PCIE_FW_PF_DEVLOG_NENTRIES128 (scalar_t__) ;
 int PCIE_FW_PF_DEVLOG ;
 int PCIE_FW_REG (int ,int ) ;
 int V_FW_CMD_OP (int ) ;
 void* be32_to_cpu (int ) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_devlog_cmd*,int ,int) ;
 scalar_t__ t4_read_reg (struct adapter*,int ) ;
 int t4_wr_mbox (struct adapter*,int ,struct fw_devlog_cmd*,int,struct fw_devlog_cmd*) ;

int t4_init_devlog_params(struct adapter *adap, int fw_attach)
{
 struct devlog_params *dparams = &adap->params.devlog;
 u32 pf_dparams;
 unsigned int devlog_meminfo;
 struct fw_devlog_cmd devlog_cmd;
 int ret;





 pf_dparams =
  t4_read_reg(adap, PCIE_FW_REG(A_PCIE_FW_PF, PCIE_FW_PF_DEVLOG));
 if (pf_dparams) {
  unsigned int nentries, nentries128;

  dparams->memtype = G_PCIE_FW_PF_DEVLOG_MEMTYPE(pf_dparams);
  dparams->start = G_PCIE_FW_PF_DEVLOG_ADDR16(pf_dparams) << 4;

  nentries128 = G_PCIE_FW_PF_DEVLOG_NENTRIES128(pf_dparams);
  nentries = (nentries128 + 1) * 128;
  dparams->size = nentries * sizeof(struct fw_devlog_e);

  return 0;
 }




 memset(dparams, 0, sizeof *dparams);





 if (!fw_attach)
  return -ENXIO;



 memset(&devlog_cmd, 0, sizeof devlog_cmd);
 devlog_cmd.op_to_write = cpu_to_be32(V_FW_CMD_OP(FW_DEVLOG_CMD) |
          F_FW_CMD_REQUEST | F_FW_CMD_READ);
 devlog_cmd.retval_len16 = cpu_to_be32(FW_LEN16(devlog_cmd));
 ret = t4_wr_mbox(adap, adap->mbox, &devlog_cmd, sizeof(devlog_cmd),
    &devlog_cmd);
 if (ret)
  return ret;

 devlog_meminfo =
  be32_to_cpu(devlog_cmd.memtype_devlog_memaddr16_devlog);
 dparams->memtype = G_FW_DEVLOG_CMD_MEMTYPE_DEVLOG(devlog_meminfo);
 dparams->start = G_FW_DEVLOG_CMD_MEMADDR16_DEVLOG(devlog_meminfo) << 4;
 dparams->size = be32_to_cpu(devlog_cmd.memsize_devlog);

 return 0;
}
