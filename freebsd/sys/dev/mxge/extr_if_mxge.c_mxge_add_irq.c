
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int num_slices; } ;
typedef TYPE_1__ mxge_softc_t ;


 int mxge_add_msix_irqs (TYPE_1__*) ;
 int mxge_add_single_irq (TYPE_1__*) ;
 int mxge_rem_msix_irqs (TYPE_1__*) ;

__attribute__((used)) static int
mxge_add_irq(mxge_softc_t *sc)
{
 int err;

 if (sc->num_slices > 1)
  err = mxge_add_msix_irqs(sc);
 else
  err = mxge_add_single_irq(sc);

 if (0 && err == 0 && sc->num_slices > 1) {
  mxge_rem_msix_irqs(sc);
  err = mxge_add_msix_irqs(sc);
 }
 return err;
}
