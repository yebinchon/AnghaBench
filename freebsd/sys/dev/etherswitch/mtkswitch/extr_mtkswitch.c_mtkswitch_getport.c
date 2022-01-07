
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int (* mtkswitch_port_vlan_get ) (struct mtkswitch_softc*,TYPE_3__*) ;} ;
struct TYPE_6__ {scalar_t__ es_nports; } ;
struct mtkswitch_softc {TYPE_2__ hal; TYPE_1__ info; } ;
struct mii_data {int mii_media; int mii_ifp; } ;
struct ifmediareq {int ifm_current; int ifm_active; int ifm_status; scalar_t__ ifm_mask; scalar_t__ ifm_count; } ;
struct TYPE_8__ {scalar_t__ es_port; struct ifmediareq es_ifmr; int es_ifr; int es_flags; } ;
typedef TYPE_3__ etherswitch_port_t ;
typedef int device_t ;


 int ENXIO ;
 int ETHERSWITCH_PORT_CPU ;
 int IFM_1000_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_NONE ;
 int SIOCGIFMEDIA ;
 struct mtkswitch_softc* device_get_softc (int ) ;
 int ifmedia_ioctl (int ,int *,int *,int ) ;
 scalar_t__ mtkswitch_is_cpuport (struct mtkswitch_softc*,scalar_t__) ;
 struct mii_data* mtkswitch_miiforport (struct mtkswitch_softc*,scalar_t__) ;
 int stub1 (struct mtkswitch_softc*,TYPE_3__*) ;

__attribute__((used)) static int
mtkswitch_getport(device_t dev, etherswitch_port_t *p)
{
 struct mtkswitch_softc *sc;
 struct mii_data *mii;
 struct ifmediareq *ifmr;
 int err;

 sc = device_get_softc(dev);
 if (p->es_port < 0 || p->es_port > sc->info.es_nports)
  return (ENXIO);

 err = sc->hal.mtkswitch_port_vlan_get(sc, p);
 if (err != 0)
  return (err);

 mii = mtkswitch_miiforport(sc, p->es_port);
 if (mtkswitch_is_cpuport(sc, p->es_port)) {


  p->es_flags |= ETHERSWITCH_PORT_CPU;
  ifmr = &p->es_ifmr;
  ifmr->ifm_count = 0;
  ifmr->ifm_current = ifmr->ifm_active =
      IFM_ETHER | IFM_1000_T | IFM_FDX;
  ifmr->ifm_mask = 0;
  ifmr->ifm_status = IFM_ACTIVE | IFM_AVALID;
 } else if (mii != ((void*)0)) {
  err = ifmedia_ioctl(mii->mii_ifp, &p->es_ifr,
      &mii->mii_media, SIOCGIFMEDIA);
  if (err)
   return (err);
 } else {
  ifmr = &p->es_ifmr;
  ifmr->ifm_count = 0;
  ifmr->ifm_current = ifmr->ifm_active = IFM_NONE;
  ifmr->ifm_mask = 0;
  ifmr->ifm_status = 0;
 }
 return (0);
}
