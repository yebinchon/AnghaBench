
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dtsec_softc {int sc_dev; int sc_mach; TYPE_1__* sc_mii; } ;
typedef int e_EnetSpeed ;
typedef int device_t ;
struct TYPE_2__ {int mii_media_active; } ;


 int DTSEC_LOCK_ASSERT (struct dtsec_softc*) ;
 int E_OK ;
 int FM_MAC_AdjustLink (int ,int ,int) ;




 int IFM_FDX ;
 int IFM_GMASK ;
 int IFM_SUBTYPE (int) ;
 struct dtsec_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int e_ENET_SPEED_10 ;
 int e_ENET_SPEED_100 ;
 int e_ENET_SPEED_1000 ;

void
dtsec_miibus_statchg(device_t dev)
{
 struct dtsec_softc *sc;
 e_EnetSpeed speed;
 bool duplex;
 int error;

 sc = device_get_softc(dev);

 DTSEC_LOCK_ASSERT(sc);

 duplex = ((sc->sc_mii->mii_media_active & IFM_GMASK) == IFM_FDX);

 switch (IFM_SUBTYPE(sc->sc_mii->mii_media_active)) {
 case 130:
 case 131:
  speed = e_ENET_SPEED_1000;
  break;

        case 129:
  speed = e_ENET_SPEED_100;
  break;

        case 128:
  speed = e_ENET_SPEED_10;
  break;

 default:
  speed = e_ENET_SPEED_10;
 }

 error = FM_MAC_AdjustLink(sc->sc_mach, speed, duplex);
 if (error != E_OK)
  device_printf(sc->sc_dev, "error while adjusting MAC speed.\n");
}
