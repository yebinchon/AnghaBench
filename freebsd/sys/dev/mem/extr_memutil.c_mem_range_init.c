
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* mr_op; } ;
struct TYPE_4__ {int (* init ) (TYPE_2__*) ;} ;


 TYPE_2__ mem_range_softc ;
 int mr_lock ;
 int rw_init (int *,char*) ;
 int stub1 (TYPE_2__*) ;

void
mem_range_init(void)
{

 if (mem_range_softc.mr_op == ((void*)0))
  return;
 rw_init(&mr_lock, "memrange");
 mem_range_softc.mr_op->init(&mem_range_softc);
}
