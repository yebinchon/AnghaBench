
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adapter_t ;


 int A_MC5_DB_CONFIG ;
 int A_TP_GLOBAL_CONFIG ;
 int A_TP_INGRESS_CONFIG ;
 int F_FILTEREN ;
 int F_LOOKUPEVERYPKT ;
 int M_FIVETUPLELOOKUP ;
 int V_FIVETUPLELOOKUP (int ) ;
 int t3_set_reg_field (int *,int ,int ,int ) ;
 int tp_wr_bits_indirect (int *,int ,int ,int ) ;

void t3_disable_filters(adapter_t *adap)
{

 t3_set_reg_field(adap, A_MC5_DB_CONFIG, F_FILTEREN, 0);
 t3_set_reg_field(adap, A_TP_GLOBAL_CONFIG,
    V_FIVETUPLELOOKUP(M_FIVETUPLELOOKUP), 0);
 tp_wr_bits_indirect(adap, A_TP_INGRESS_CONFIG, F_LOOKUPEVERYPKT, 0);
}
