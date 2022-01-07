
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct alc_softc {int alc_phyaddr; int alc_dev; } ;


 int ALC_MII_DBG_ADDR ;
 int ALC_MII_DBG_DATA ;
 int alc_miibus_readreg (int ,int ,int ) ;
 int alc_miibus_writereg (int ,int ,int ,int) ;

__attribute__((used)) static uint32_t
alc_miidbg_readreg(struct alc_softc *sc, int reg)
{

 alc_miibus_writereg(sc->alc_dev, sc->alc_phyaddr, ALC_MII_DBG_ADDR,
     reg);
 return (alc_miibus_readreg(sc->alc_dev, sc->alc_phyaddr,
     ALC_MII_DBG_DATA));
}
