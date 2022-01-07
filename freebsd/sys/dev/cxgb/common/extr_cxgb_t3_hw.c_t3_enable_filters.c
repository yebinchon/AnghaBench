
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adapter_t ;


 int A_MC5_DB_CONFIG ;
 int A_TP_GLOBAL_CONFIG ;
 int A_TP_INGRESS_CONFIG ;
 int A_TP_IN_CONFIG ;
 int F_FILTEREN ;
 int F_LOOKUPEVERYPKT ;
 int F_NICMODE ;
 int V_FIVETUPLELOOKUP (int) ;
 int t3_set_reg_field (int *,int ,int ,int ) ;
 int tp_wr_bits_indirect (int *,int ,int ,int ) ;

void t3_enable_filters(adapter_t *adap)
{
 t3_set_reg_field(adap, A_TP_IN_CONFIG, F_NICMODE, 0);
 t3_set_reg_field(adap, A_MC5_DB_CONFIG, 0, F_FILTEREN);
 t3_set_reg_field(adap, A_TP_GLOBAL_CONFIG, 0, V_FIVETUPLELOOKUP(3));
 tp_wr_bits_indirect(adap, A_TP_INGRESS_CONFIG, 0, F_LOOKUPEVERYPKT);
}
