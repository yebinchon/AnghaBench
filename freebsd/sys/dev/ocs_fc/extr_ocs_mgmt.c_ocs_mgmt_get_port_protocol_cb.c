
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int semaphore; int port_protocol; int status; } ;
typedef TYPE_1__ ocs_mgmt_get_port_protocol_result_t ;
typedef int ocs_hw_port_protocol_e ;
typedef int int32_t ;


 int ocs_sem_v (int *) ;

__attribute__((used)) static void
ocs_mgmt_get_port_protocol_cb(int32_t status,
         ocs_hw_port_protocol_e port_protocol,
         void *arg)
{
 ocs_mgmt_get_port_protocol_result_t *result = arg;

 result->status = status;
 result->port_protocol = port_protocol;

 ocs_sem_v(&(result->semaphore));
}
