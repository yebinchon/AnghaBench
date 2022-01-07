
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stop_rcv; } ;
typedef TYPE_1__ qla_host_t ;


 int QL_INITIATE_RECOVERY (TYPE_1__*) ;

__attribute__((used)) static void
qla_rcv_error(qla_host_t *ha)
{
 ha->stop_rcv = 1;
 QL_INITIATE_RECOVERY(ha);
}
