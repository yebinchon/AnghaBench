
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ es_nvlangroups; } ;
struct TYPE_3__ {int arswitch_hw_global_setup; int arswitch_hw_setup; } ;
struct arswitch_softc {TYPE_2__ info; TYPE_1__ hal; } ;


 int ar8226_hw_global_setup ;
 int ar8226_hw_setup ;

void
ar8226_attach(struct arswitch_softc *sc)
{

 sc->hal.arswitch_hw_setup = ar8226_hw_setup;
 sc->hal.arswitch_hw_global_setup = ar8226_hw_global_setup;

 sc->info.es_nvlangroups = 0;
}
