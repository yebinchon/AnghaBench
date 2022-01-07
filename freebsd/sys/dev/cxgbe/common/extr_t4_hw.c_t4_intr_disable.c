
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int pf; } ;


 int A_PL_INT_MAP0 ;
 int A_PL_PF_INT_ENABLE ;
 int MYPF_REG (int ) ;
 int t4_set_reg_field (struct adapter*,int ,int,int ) ;
 int t4_write_reg (struct adapter*,int ,int ) ;

void t4_intr_disable(struct adapter *adap)
{

 t4_write_reg(adap, MYPF_REG(A_PL_PF_INT_ENABLE), 0);
 t4_set_reg_field(adap, A_PL_INT_MAP0, 1 << adap->pf, 0);
}
