
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ukswitch_softc {size_t numports; scalar_t__* portphy; scalar_t__ cpuport; } ;
struct ifmedia {int dummy; } ;
struct mii_data {struct ifmedia mii_media; } ;
struct ifnet {int dummy; } ;
struct TYPE_3__ {size_t es_port; int es_ifr; } ;
typedef TYPE_1__ etherswitch_port_t ;
typedef int device_t ;


 int ENXIO ;
 int SIOCSIFMEDIA ;
 struct ukswitch_softc* device_get_softc (int ) ;
 int ifmedia_ioctl (struct ifnet*,int *,struct ifmedia*,int ) ;
 struct ifnet* ukswitch_ifpforport (struct ukswitch_softc*,size_t) ;
 struct mii_data* ukswitch_miiforport (struct ukswitch_softc*,size_t) ;

__attribute__((used)) static int
ukswitch_setport(device_t dev, etherswitch_port_t *p)
{
 struct ukswitch_softc *sc = device_get_softc(dev);
 struct ifmedia *ifm;
 struct mii_data *mii;
 struct ifnet *ifp;
 int err;

 if (p->es_port < 0 || p->es_port >= sc->numports)
  return (ENXIO);

 if (sc->portphy[p->es_port] == sc->cpuport)
  return (ENXIO);

 mii = ukswitch_miiforport(sc, p->es_port);
 if (mii == ((void*)0))
  return (ENXIO);

 ifp = ukswitch_ifpforport(sc, p->es_port);

 ifm = &mii->mii_media;
 err = ifmedia_ioctl(ifp, &p->es_ifr, ifm, SIOCSIFMEDIA);
 return (err);
}
