
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef int adapter_t ;


 int A_MI1_ADDR ;
 int A_MI1_CFG ;
 int A_MI1_DATA ;
 int A_MI1_OP ;
 int EINVAL ;
 int F_BUSY ;
 int MDIO_ATTEMPTS ;
 int MDIO_LOCK (int *) ;
 int MDIO_UNLOCK (int *) ;
 int M_ST ;
 unsigned int V_MDI_OP (int) ;
 unsigned int V_PHYADDR (int) ;
 unsigned int V_REGADDR (int) ;
 int V_ST (int) ;
 int t3_set_reg_field (int *,int ,int ,int ) ;
 int t3_wait_op_done (int *,int ,int ,int ,int ,int) ;
 int t3_write_reg (int *,int ,unsigned int) ;

int t3_mi1_write(adapter_t *adapter, int phy_addr, int mmd_addr,
   int reg_addr, unsigned int val)
{
 int ret;
 u32 addr = V_REGADDR(reg_addr) | V_PHYADDR(phy_addr);

 if (mmd_addr)
  return -EINVAL;

 MDIO_LOCK(adapter);
 t3_set_reg_field(adapter, A_MI1_CFG, V_ST(M_ST), V_ST(1));
 t3_write_reg(adapter, A_MI1_ADDR, addr);
 t3_write_reg(adapter, A_MI1_DATA, val);
 t3_write_reg(adapter, A_MI1_OP, V_MDI_OP(1));
 ret = t3_wait_op_done(adapter, A_MI1_OP, F_BUSY, 0, MDIO_ATTEMPTS, 10);
 MDIO_UNLOCK(adapter);
 return ret;
}
