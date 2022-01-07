
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xl_softc {int xl_media; scalar_t__ xl_type; int xl_caps; int xl_dev; int xl_miibus; } ;
struct ifmedia {int dummy; } ;
struct mii_data {struct ifmedia mii_media; } ;
typedef int device_t ;


 int IFM_10_2 ;
 int IFM_10_5 ;
 int IFM_10_FL ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_HDX ;
 int XL_CAPS_FULL_DUPLEX ;
 int XL_MEDIAOPT_10FL ;
 int XL_MEDIAOPT_AUI ;
 int XL_MEDIAOPT_BNC ;
 scalar_t__ XL_TYPE_905B ;
 scalar_t__ bootverbose ;
 void* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ifmedia_add (struct ifmedia*,int,int ,int *) ;

__attribute__((used)) static void
xl_miibus_mediainit(device_t dev)
{
 struct xl_softc *sc;
 struct mii_data *mii;
 struct ifmedia *ifm;

 sc = device_get_softc(dev);
 mii = device_get_softc(sc->xl_miibus);
 ifm = &mii->mii_media;

 if (sc->xl_media & (XL_MEDIAOPT_AUI | XL_MEDIAOPT_10FL)) {



  if (sc->xl_type == XL_TYPE_905B &&
      sc->xl_media == XL_MEDIAOPT_10FL) {
   if (bootverbose)
    device_printf(sc->xl_dev, "found 10baseFL\n");
   ifmedia_add(ifm, IFM_ETHER | IFM_10_FL, 0, ((void*)0));
   ifmedia_add(ifm, IFM_ETHER | IFM_10_FL|IFM_HDX, 0,
       ((void*)0));
   if (sc->xl_caps & XL_CAPS_FULL_DUPLEX)
    ifmedia_add(ifm,
        IFM_ETHER | IFM_10_FL | IFM_FDX, 0, ((void*)0));
  } else {
   if (bootverbose)
    device_printf(sc->xl_dev, "found AUI\n");
   ifmedia_add(ifm, IFM_ETHER | IFM_10_5, 0, ((void*)0));
  }
 }

 if (sc->xl_media & XL_MEDIAOPT_BNC) {
  if (bootverbose)
   device_printf(sc->xl_dev, "found BNC\n");
  ifmedia_add(ifm, IFM_ETHER | IFM_10_2, 0, ((void*)0));
 }
}
