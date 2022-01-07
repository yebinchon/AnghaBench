
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int mii_capabilities; int mii_capmask; int mii_dev; } ;
typedef int device_t ;


 int BMSR_100TXFDX ;
 int BMSR_100TXHDX ;
 int BMSR_10TFDX ;
 int BMSR_10THDX ;
 int MIIBUS_MEDIAINIT (int ) ;
 int MIIF_NOISOLATE ;
 int MIIF_NOMANPAUSE ;
 struct mii_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mii_phy_add_media (struct mii_softc*) ;
 int mii_phy_dev_attach (int ,int,int *,int ) ;
 int pnphy_funcs ;
 int printf (char*) ;

__attribute__((used)) static int
pnphy_attach(device_t dev)
{
 struct mii_softc *sc;

 sc = device_get_softc(dev);

 mii_phy_dev_attach(dev, MIIF_NOISOLATE | MIIF_NOMANPAUSE,
     &pnphy_funcs, 0);

 sc->mii_capabilities =
     BMSR_100TXFDX | BMSR_100TXHDX | BMSR_10TFDX | BMSR_10THDX;
 sc->mii_capabilities &= sc->mii_capmask;
 device_printf(dev, " ");
 mii_phy_add_media(sc);
 printf("\n");

 MIIBUS_MEDIAINIT(sc->mii_dev);
 return (0);
}
