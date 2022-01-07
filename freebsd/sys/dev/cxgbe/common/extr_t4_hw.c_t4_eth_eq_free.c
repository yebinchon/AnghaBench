
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_eq_eth_cmd {void* eqid_pkd; void* alloc_to_len16; void* op_to_vfn; } ;
struct adapter {int dummy; } ;
typedef int c ;


 int FW_EQ_ETH_CMD ;
 int FW_LEN16 (struct fw_eq_eth_cmd) ;
 int F_FW_CMD_EXEC ;
 int F_FW_CMD_REQUEST ;
 int F_FW_EQ_ETH_CMD_FREE ;
 int V_FW_CMD_OP (int ) ;
 int V_FW_EQ_ETH_CMD_EQID (unsigned int) ;
 int V_FW_EQ_ETH_CMD_PFN (unsigned int) ;
 int V_FW_EQ_ETH_CMD_VFN (unsigned int) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_eq_eth_cmd*,int ,int) ;
 int t4_wr_mbox (struct adapter*,unsigned int,struct fw_eq_eth_cmd*,int,int *) ;

int t4_eth_eq_free(struct adapter *adap, unsigned int mbox, unsigned int pf,
     unsigned int vf, unsigned int eqid)
{
 struct fw_eq_eth_cmd c;

 memset(&c, 0, sizeof(c));
 c.op_to_vfn = cpu_to_be32(V_FW_CMD_OP(FW_EQ_ETH_CMD) |
      F_FW_CMD_REQUEST | F_FW_CMD_EXEC |
      V_FW_EQ_ETH_CMD_PFN(pf) |
      V_FW_EQ_ETH_CMD_VFN(vf));
 c.alloc_to_len16 = cpu_to_be32(F_FW_EQ_ETH_CMD_FREE | FW_LEN16(c));
 c.eqid_pkd = cpu_to_be32(V_FW_EQ_ETH_CMD_EQID(eqid));
 return t4_wr_mbox(adap, mbox, &c, sizeof(c), ((void*)0));
}
