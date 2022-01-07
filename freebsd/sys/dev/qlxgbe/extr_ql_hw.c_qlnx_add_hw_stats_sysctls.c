
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qla_host_t ;


 int qlnx_add_hw_mac_stats_sysctls (int *) ;
 int qlnx_add_hw_mbx_cmpl_stats_sysctls (int *) ;
 int qlnx_add_hw_rcv_stats_sysctls (int *) ;
 int qlnx_add_hw_xmt_stats_sysctls (int *) ;

__attribute__((used)) static void
qlnx_add_hw_stats_sysctls(qla_host_t *ha)
{
 qlnx_add_hw_mac_stats_sysctls(ha);
 qlnx_add_hw_rcv_stats_sysctls(ha);
 qlnx_add_hw_xmt_stats_sysctls(ha);
 qlnx_add_hw_mbx_cmpl_stats_sysctls(ha);

 return;
}
