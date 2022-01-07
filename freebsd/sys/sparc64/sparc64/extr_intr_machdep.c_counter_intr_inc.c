
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int v_intr; } ;


 TYPE_1__ vm_cnt ;
 scalar_t__ zpcpu_get (int ) ;

void
counter_intr_inc(void)
{

 *(uint64_t *)zpcpu_get(vm_cnt.v_intr) += 1;
}
