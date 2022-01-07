
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mr_op; } ;


 TYPE_1__ mem_range_softc ;
 int mr_lock ;
 int rw_destroy (int *) ;

void
mem_range_destroy(void)
{

 if (mem_range_softc.mr_op == ((void*)0))
  return;
 rw_destroy(&mr_lock);
}
