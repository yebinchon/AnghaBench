
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_softc {int dummy; } ;
typedef int device_t ;


 int SMC_LOCK (struct smc_softc*) ;
 int SMC_UNLOCK (struct smc_softc*) ;
 struct smc_softc* device_get_softc (int ) ;
 int mii_bitbang_readreg (int ,int *,int,int) ;
 int smc_mii_bitbang_ops ;
 int smc_select_bank (struct smc_softc*,int) ;

int
smc_miibus_readreg(device_t dev, int phy, int reg)
{
 struct smc_softc *sc;
 int val;

 sc = device_get_softc(dev);

 SMC_LOCK(sc);

 smc_select_bank(sc, 3);

 val = mii_bitbang_readreg(dev, &smc_mii_bitbang_ops, phy, reg);

 SMC_UNLOCK(sc);
 return (val);
}
