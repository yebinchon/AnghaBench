
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_softc {int dummy; } ;


 int MII_KSZ9031_MMD_ACCESS_CTRL ;
 int MII_KSZ9031_MMD_ACCESS_DATA ;
 int MII_KSZ9031_MMD_DATA_NOINC ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;

__attribute__((used)) static uint32_t
ksz9031_read(struct mii_softc *sc, uint32_t devaddr, uint32_t reg)
{

        PHY_WRITE(sc, MII_KSZ9031_MMD_ACCESS_CTRL, devaddr);
        PHY_WRITE(sc, MII_KSZ9031_MMD_ACCESS_DATA, reg);


        PHY_WRITE(sc, MII_KSZ9031_MMD_ACCESS_CTRL,
     MII_KSZ9031_MMD_DATA_NOINC | devaddr);

 return (PHY_READ(sc, MII_KSZ9031_MMD_ACCESS_DATA));
}
