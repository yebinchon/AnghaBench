
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qla_host_t ;


 int qlnx_add_drvr_rds_stats (int *) ;
 int qlnx_add_drvr_sds_stats (int *) ;
 int qlnx_add_drvr_tx_stats (int *) ;

__attribute__((used)) static void
qlnx_add_drvr_stats_sysctls(qla_host_t *ha)
{
 qlnx_add_drvr_sds_stats(ha);
 qlnx_add_drvr_rds_stats(ha);
 qlnx_add_drvr_tx_stats(ha);
 return;
}
