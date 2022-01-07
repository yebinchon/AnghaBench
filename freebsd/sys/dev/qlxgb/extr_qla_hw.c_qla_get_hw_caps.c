
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qla_host_t ;


 int qla_get_flow_control (int *) ;
 int qla_get_max_lro (int *) ;
 int qla_get_max_mtu (int *) ;
 int qla_get_max_rcv_cntxts (int *) ;
 int qla_get_max_rds (int *) ;
 int qla_get_max_rules (int *) ;
 int qla_get_max_sds (int *) ;
 int qla_get_max_tx_cntxts (int *) ;

void
qla_get_hw_caps(qla_host_t *ha)
{

 qla_get_max_rds(ha);
 qla_get_max_sds(ha);
 qla_get_max_rules(ha);
 qla_get_max_rcv_cntxts(ha);
 qla_get_max_tx_cntxts(ha);
 qla_get_max_mtu(ha);
 qla_get_max_lro(ha);
 qla_get_flow_control(ha);
 return;
}
