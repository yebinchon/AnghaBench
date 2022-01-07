
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int32_t ;
struct TYPE_3__ {int val; } ;


 TYPE_1__* bridge_pf_sysctl ;
 int nitems (TYPE_1__*) ;

int32_t
bridge_get_pfval(uint8_t which)
{

 if (which > nitems(bridge_pf_sysctl) || which < 1)
  return (-1);

 return (bridge_pf_sysctl[which - 1].val);
}
