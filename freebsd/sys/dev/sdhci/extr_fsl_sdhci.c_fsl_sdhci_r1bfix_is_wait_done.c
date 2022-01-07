
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int mtx; } ;
struct fsl_sdhci_softc {scalar_t__ r1bfix_timeout_at; scalar_t__ r1bfix_type; int r1bfix_intmask; int r1bfix_callout; TYPE_1__ slot; } ;
typedef int boolean_t ;


 int MA_OWNED ;
 scalar_t__ R1BFIX_NODATA ;
 scalar_t__ R1BFIX_NONE ;
 int RD4 (struct fsl_sdhci_softc*,int ) ;
 int SBT_1MS ;
 int SDHCI_INT_DATA_END ;
 int SDHCI_INT_DATA_TIMEOUT ;
 int SDHCI_INT_RESPONSE ;
 int SDHC_PRES_CDIHB ;
 int SDHC_PRES_DLA ;
 int SDHC_PRES_STATE ;
 int callout_reset_sbt (int *,int ,int ,int ,struct fsl_sdhci_softc*,int ) ;
 int fsl_sdhci_r1bfix_func ;
 scalar_t__ getsbinuptime () ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static boolean_t
fsl_sdhci_r1bfix_is_wait_done(struct fsl_sdhci_softc *sc)
{
 uint32_t inhibit;

 mtx_assert(&sc->slot.mtx, MA_OWNED);
 inhibit = RD4(sc, SDHC_PRES_STATE) & (SDHC_PRES_DLA | SDHC_PRES_CDIHB);

 if (inhibit && getsbinuptime() < sc->r1bfix_timeout_at) {
  callout_reset_sbt(&sc->r1bfix_callout, SBT_1MS, 0,
      fsl_sdhci_r1bfix_func, sc, 0);
  return (0);
 }
 if (inhibit)
  sc->r1bfix_intmask |= SDHCI_INT_DATA_TIMEOUT;
 else {
  sc->r1bfix_intmask |= SDHCI_INT_DATA_END;
  if (sc->r1bfix_type == R1BFIX_NODATA)
   sc->r1bfix_intmask |= SDHCI_INT_RESPONSE;
 }

 sc->r1bfix_type = R1BFIX_NONE;
 return (1);
}
