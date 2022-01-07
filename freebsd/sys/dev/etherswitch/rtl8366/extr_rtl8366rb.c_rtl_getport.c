
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct rtl8366rb_softc {int numphys; int* vid; int * ifp; int * miibus; scalar_t__ phy4cpu; } ;
struct ifmedia {int dummy; } ;
struct mii_data {struct ifmedia mii_media; } ;
struct ifmediareq {int ifm_status; int ifm_count; int * ifm_ulist; scalar_t__ ifm_mask; int ifm_active; int ifm_current; } ;
struct TYPE_3__ {int es_port; int es_pvid; int es_flags; int es_ifr; struct ifmediareq es_ifmr; } ;
typedef TYPE_1__ etherswitch_port_t ;
typedef int device_t ;


 int ENXIO ;
 int ETHERSWITCH_PORT_CPU ;
 int ETHERSWITCH_VID_MASK ;
 int IFM_1000_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_MAKEWORD (int ,int ,int ,int ) ;
 int RTL8366_NUM_PHYS ;
 scalar_t__ RTL8366_PLSR_BASE ;
 int RTL8366_PVCR_GET (int,int ) ;
 int RTL8366_PVCR_REG (int) ;
 int RTL_WAITOK ;
 int SIOCGIFMEDIA ;
 void* device_get_softc (int ) ;
 int ifmedia_ioctl (int ,int *,struct ifmedia*,int ) ;
 int rtl8366rb_update_ifmedia (int,int*,int *) ;
 int rtl_readreg (int ,int ) ;
 int smi_read (int ,scalar_t__,int*,int ) ;

__attribute__((used)) static int
rtl_getport(device_t dev, etherswitch_port_t *p)
{
 struct rtl8366rb_softc *sc;
 struct ifmedia *ifm;
 struct mii_data *mii;
 struct ifmediareq *ifmr;
 uint16_t v;
 int err, vlangroup;

 sc = device_get_softc(dev);

 ifmr = &p->es_ifmr;

 if (p->es_port < 0 || p->es_port >= (sc->numphys + 1))
  return (ENXIO);
 if (sc->phy4cpu && p->es_port == sc->numphys) {
  vlangroup = RTL8366_PVCR_GET(p->es_port + 1,
      rtl_readreg(dev, RTL8366_PVCR_REG(p->es_port + 1)));
 } else {
  vlangroup = RTL8366_PVCR_GET(p->es_port,
      rtl_readreg(dev, RTL8366_PVCR_REG(p->es_port)));
 }
 p->es_pvid = sc->vid[vlangroup] & ETHERSWITCH_VID_MASK;

 if (p->es_port < sc->numphys) {
  mii = device_get_softc(sc->miibus[p->es_port]);
  ifm = &mii->mii_media;
  err = ifmedia_ioctl(sc->ifp[p->es_port], &p->es_ifr, ifm, SIOCGIFMEDIA);
  if (err)
   return (err);
 } else {

  p->es_flags |= ETHERSWITCH_PORT_CPU;
  smi_read(dev, RTL8366_PLSR_BASE + (RTL8366_NUM_PHYS)/2, &v, RTL_WAITOK);
  v = v >> (8 * ((RTL8366_NUM_PHYS) % 2));
  rtl8366rb_update_ifmedia(v, &ifmr->ifm_status, &ifmr->ifm_active);
  ifmr->ifm_current = ifmr->ifm_active;
  ifmr->ifm_mask = 0;
  ifmr->ifm_status = IFM_ACTIVE | IFM_AVALID;

  if (ifmr->ifm_count > 0) {
   ifmr->ifm_count = 1;
   ifmr->ifm_ulist[0] = IFM_MAKEWORD(IFM_ETHER, IFM_1000_T,
       IFM_FDX, 0);
  } else
   ifmr->ifm_count = 0;
 }
 return (0);
}
