
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qla_host_t ;


 int sysctl_num_sds_rings ;

int
qla_get_msix_count(qla_host_t *ha)
{
 return (sysctl_num_sds_rings);
}
