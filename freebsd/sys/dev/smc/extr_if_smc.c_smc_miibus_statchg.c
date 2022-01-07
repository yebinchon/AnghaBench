
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct smc_softc {int smc_miibus; } ;
struct mii_data {int mii_media_active; } ;
typedef int device_t ;


 int IFM_FDX ;
 int IFM_OPTIONS (int ) ;
 int SMC_LOCK (struct smc_softc*) ;
 int SMC_UNLOCK (struct smc_softc*) ;
 int TCR ;
 int TCR_SWFDUP ;
 void* device_get_softc (int ) ;
 int smc_read_2 (struct smc_softc*,int ) ;
 int smc_select_bank (struct smc_softc*,int ) ;
 int smc_write_2 (struct smc_softc*,int ,int ) ;

void
smc_miibus_statchg(device_t dev)
{
 struct smc_softc *sc;
 struct mii_data *mii;
 uint16_t tcr;

 sc = device_get_softc(dev);
 mii = device_get_softc(sc->smc_miibus);

 SMC_LOCK(sc);

 smc_select_bank(sc, 0);
 tcr = smc_read_2(sc, TCR);

 if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) != 0)
  tcr |= TCR_SWFDUP;
 else
  tcr &= ~TCR_SWFDUP;

 smc_write_2(sc, TCR, tcr);

 SMC_UNLOCK(sc);
}
