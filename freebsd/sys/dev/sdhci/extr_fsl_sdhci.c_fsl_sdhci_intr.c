
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int mtx; } ;
struct fsl_sdhci_softc {int r1bfix_type; TYPE_1__ slot; int mem_res; scalar_t__ r1bfix_timeout_at; } ;


 int BUS_SPACE_BARRIER_WRITE ;


 int RD4 (struct fsl_sdhci_softc*,int ) ;
 int SBT_1MS ;
 int SDHCI_INT_DATA_END ;
 int SDHCI_INT_RESPONSE ;
 int SDHCI_INT_STATUS ;
 int WR4 (struct fsl_sdhci_softc*,int ,int) ;
 int bus_barrier (int ,int ,int,int ) ;
 int fsl_sdhci_r1bfix_is_wait_done (struct fsl_sdhci_softc*) ;
 scalar_t__ getsbinuptime () ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sdhci_generic_intr (TYPE_1__*) ;

__attribute__((used)) static void
fsl_sdhci_intr(void *arg)
{
 struct fsl_sdhci_softc *sc = arg;
 uint32_t intmask;

 mtx_lock(&sc->slot.mtx);
 switch (sc->r1bfix_type) {
 case 128:
  intmask = RD4(sc, SDHCI_INT_STATUS) & SDHCI_INT_RESPONSE;
  break;
 case 129:
  intmask = RD4(sc, SDHCI_INT_STATUS) & SDHCI_INT_DATA_END;
  break;
 default:
  intmask = 0;
  break;
 }
 if (intmask) {
  sc->r1bfix_timeout_at = getsbinuptime() + 250 * SBT_1MS;
  if (!fsl_sdhci_r1bfix_is_wait_done(sc)) {
   WR4(sc, SDHCI_INT_STATUS, intmask);
   bus_barrier(sc->mem_res, SDHCI_INT_STATUS, 4,
       BUS_SPACE_BARRIER_WRITE);
  }
 }

 mtx_unlock(&sc->slot.mtx);
 sdhci_generic_intr(&sc->slot);
}
