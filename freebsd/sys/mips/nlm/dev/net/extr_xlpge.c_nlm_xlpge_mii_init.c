
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_xlpge_softc {int * mii_bus; int phy_addr; int xlpge_if; } ;
typedef int device_t ;


 int BMSR_DEFCAPMASK ;
 int MII_OFFSET_ANY ;
 int device_printf (int ,char*) ;
 int mii_attach (int ,int **,int ,int ,int ,int ,int ,int ,int ) ;
 int xlpge_mediachange ;
 int xlpge_mediastatus ;

__attribute__((used)) static void
nlm_xlpge_mii_init(device_t dev, struct nlm_xlpge_softc *sc)
{
 int error;

 error = mii_attach(dev, &sc->mii_bus, sc->xlpge_if,
   xlpge_mediachange, xlpge_mediastatus,
   BMSR_DEFCAPMASK, sc->phy_addr, MII_OFFSET_ANY, 0);

 if (error) {
  device_printf(dev, "attaching PHYs failed\n");
  sc->mii_bus = ((void*)0);
 }

 if (sc->mii_bus != ((void*)0)) {


 }
}
