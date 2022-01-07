
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* mr_op; } ;
struct TYPE_4__ {int (* initAP ) (TYPE_2__*) ;} ;


 TYPE_2__ mem_range_softc ;
 int stub1 (TYPE_2__*) ;

void
mem_range_AP_init(void)
{

 if (mem_range_softc.mr_op && mem_range_softc.mr_op->initAP)
  mem_range_softc.mr_op->initAP(&mem_range_softc);
}
