
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int instance_index; } ;
typedef TYPE_1__ ocs_t ;



uint32_t
ocs_instance(void *os)
{
 ocs_t *ocs = os;
 return ocs->instance_index;
}
