
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_rx_rings; } ;
typedef TYPE_1__ qla_host_t ;



int
qls_get_msix_count(qla_host_t *ha)
{
 return (ha->num_rx_rings);
}
