
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_softc {int dummy; } ;
typedef int device_t ;


 int SMC_LOCK (struct smc_softc*) ;
 int SMC_UNLOCK (struct smc_softc*) ;
 struct smc_softc* device_get_softc (int ) ;
 int mii_bitbang_writereg (int ,int *,int,int,int) ;
 int smc_mii_bitbang_ops ;
 int smc_select_bank (struct smc_softc*,int) ;

int
smc_miibus_writereg(device_t dev, int phy, int reg, int data)
{
 struct smc_softc *sc;

 sc = device_get_softc(dev);

 SMC_LOCK(sc);

 smc_select_bank(sc, 3);

 mii_bitbang_writereg(dev, &smc_mii_bitbang_ops, phy, reg, data);

 SMC_UNLOCK(sc);
 return (0);
}
