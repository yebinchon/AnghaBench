
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mtx; } ;
struct fsl_sdhci_softc {TYPE_1__ slot; } ;
typedef scalar_t__ boolean_t ;


 scalar_t__ fsl_sdhci_r1bfix_is_wait_done (struct fsl_sdhci_softc*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sdhci_generic_intr (TYPE_1__*) ;

__attribute__((used)) static void
fsl_sdhci_r1bfix_func(void * arg)
{
 struct fsl_sdhci_softc *sc = arg;
 boolean_t r1bwait_done;

 mtx_lock(&sc->slot.mtx);
 r1bwait_done = fsl_sdhci_r1bfix_is_wait_done(sc);
 mtx_unlock(&sc->slot.mtx);
 if (r1bwait_done)
  sdhci_generic_intr(&sc->slot);
}
