
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adapter_t ;


 int A_TP_PARA_REG7 ;
 int V_PMMAXXFERLEN0 (unsigned int) ;
 int V_PMMAXXFERLEN1 (unsigned int) ;
 int t3_write_reg (int *,int ,int) ;

void t3_tp_set_max_rxsize(adapter_t *adap, unsigned int size)
{
 t3_write_reg(adap, A_TP_PARA_REG7,
       V_PMMAXXFERLEN0(size) | V_PMMAXXFERLEN1(size));
}
