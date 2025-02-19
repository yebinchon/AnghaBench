
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int rval; void* raddr; void* paddr_mmd; } ;
struct TYPE_4__ {TYPE_1__ mdio; } ;
struct fw_ldst_cmd {TYPE_2__ u; void* cycles_to_len16; void* op_to_addrspace; } ;
struct adapter {int dummy; } ;
typedef int c ;


 int FW_LDST_ADDRSPC_MDIO ;
 int FW_LDST_CMD ;
 int FW_LEN16 (struct fw_ldst_cmd) ;
 int F_FW_CMD_READ ;
 int F_FW_CMD_REQUEST ;
 int V_FW_CMD_OP (int ) ;
 int V_FW_LDST_CMD_ADDRSPACE (int ) ;
 unsigned int V_FW_LDST_CMD_MMD (unsigned int) ;
 unsigned int V_FW_LDST_CMD_PADDR (unsigned int) ;
 unsigned int be16_to_cpu (int ) ;
 void* cpu_to_be16 (unsigned int) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_ldst_cmd*,int ,int) ;
 int t4_wr_mbox (struct adapter*,unsigned int,struct fw_ldst_cmd*,int,struct fw_ldst_cmd*) ;

int t4_mdio_rd(struct adapter *adap, unsigned int mbox, unsigned int phy_addr,
        unsigned int mmd, unsigned int reg, unsigned int *valp)
{
 int ret;
 u32 ldst_addrspace;
 struct fw_ldst_cmd c;

 memset(&c, 0, sizeof(c));
 ldst_addrspace = V_FW_LDST_CMD_ADDRSPACE(FW_LDST_ADDRSPC_MDIO);
 c.op_to_addrspace = cpu_to_be32(V_FW_CMD_OP(FW_LDST_CMD) |
     F_FW_CMD_REQUEST | F_FW_CMD_READ |
     ldst_addrspace);
 c.cycles_to_len16 = cpu_to_be32(FW_LEN16(c));
 c.u.mdio.paddr_mmd = cpu_to_be16(V_FW_LDST_CMD_PADDR(phy_addr) |
      V_FW_LDST_CMD_MMD(mmd));
 c.u.mdio.raddr = cpu_to_be16(reg);

 ret = t4_wr_mbox(adap, mbox, &c, sizeof(c), &c);
 if (ret == 0)
  *valp = be16_to_cpu(c.u.mdio.rval);
 return ret;
}
