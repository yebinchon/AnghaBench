
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sge_softc {int sge_flags; struct ifnet* sge_ifp; int sge_miibus; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
typedef int device_t ;


 int CSR_READ_4 (struct sge_softc*,int ) ;
 int CSR_WRITE_4 (struct sge_softc*,int ,int) ;
 int IFF_DRV_RUNNING ;



 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_FDX ;
 int IFM_OPTIONS (int ) ;
 int IFM_SUBTYPE (int ) ;
 int RGMIIDelay ;
 int SC_FDX ;
 int SC_SPEED_10 ;
 int SC_SPEED_100 ;
 int SC_SPEED_1000 ;
 int SC_SPEED_MASK ;
 int SGE_FLAG_FASTETHER ;
 int SGE_FLAG_FDX ;
 int SGE_FLAG_GMII ;
 int SGE_FLAG_LINK ;
 int SGE_FLAG_RGMII ;
 int SGE_FLAG_SPEED_1000 ;
 int StationControl ;
 void* device_get_softc (int ) ;

__attribute__((used)) static void
sge_miibus_statchg(device_t dev)
{
 struct sge_softc *sc;
 struct mii_data *mii;
 struct ifnet *ifp;
 uint32_t ctl, speed;

 sc = device_get_softc(dev);
 mii = device_get_softc(sc->sge_miibus);
 ifp = sc->sge_ifp;
 if (mii == ((void*)0) || ifp == ((void*)0) ||
     (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  return;
 speed = 0;
 sc->sge_flags &= ~SGE_FLAG_LINK;
 if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
     (IFM_ACTIVE | IFM_AVALID)) {
  switch (IFM_SUBTYPE(mii->mii_media_active)) {
  case 128:
   sc->sge_flags |= SGE_FLAG_LINK;
   speed = SC_SPEED_10;
   break;
  case 129:
   sc->sge_flags |= SGE_FLAG_LINK;
   speed = SC_SPEED_100;
   break;
  case 130:
   if ((sc->sge_flags & SGE_FLAG_FASTETHER) == 0) {
    sc->sge_flags |= SGE_FLAG_LINK;
    speed = SC_SPEED_1000;
   }
   break;
  default:
   break;
                }
        }
 if ((sc->sge_flags & SGE_FLAG_LINK) == 0)
  return;

 ctl = CSR_READ_4(sc, StationControl);
 ctl &= ~(0x0f000000 | SC_FDX | SC_SPEED_MASK);
 if (speed == SC_SPEED_1000) {
  ctl |= 0x07000000;
  sc->sge_flags |= SGE_FLAG_SPEED_1000;
 } else {
  ctl |= 0x04000000;
  sc->sge_flags &= ~SGE_FLAG_SPEED_1000;
 }




 ctl |= speed;
 if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) != 0) {
  ctl |= SC_FDX;
  sc->sge_flags |= SGE_FLAG_FDX;
 } else
  sc->sge_flags &= ~SGE_FLAG_FDX;
 CSR_WRITE_4(sc, StationControl, ctl);
 if ((sc->sge_flags & SGE_FLAG_RGMII) != 0) {
  CSR_WRITE_4(sc, RGMIIDelay, 0x0441);
  CSR_WRITE_4(sc, RGMIIDelay, 0x0440);
 }
}
