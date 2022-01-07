
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num_slices; } ;
typedef TYPE_1__ mxge_softc_t ;


 int mxge_rem_msix_irqs (TYPE_1__*) ;
 int mxge_rem_single_irq (TYPE_1__*) ;

__attribute__((used)) static void
mxge_rem_irq(mxge_softc_t *sc)
{
 if (sc->num_slices > 1)
  mxge_rem_msix_irqs(sc);
 else
  mxge_rem_single_irq(sc);
}
