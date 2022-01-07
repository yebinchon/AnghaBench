
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint32_t ;
struct mii_data {int mii_media; int mii_ifp; } ;
struct ifmediareq {int ifm_status; int ifm_active; int ifm_current; scalar_t__ ifm_mask; scalar_t__ ifm_count; } ;
struct TYPE_16__ {scalar_t__ es_port; int es_ifr; struct ifmediareq es_ifmr; int es_flags; int es_pvid; } ;
typedef TYPE_1__ etherswitch_port_t ;
struct TYPE_17__ {scalar_t__ num_ports; } ;
typedef TYPE_2__ e6000sw_softc_t ;
typedef int device_t ;


 int E6000SW_LOCK (TYPE_2__*) ;
 int E6000SW_LOCK_ASSERT (TYPE_2__*,int ) ;
 int E6000SW_UNLOCK (TYPE_2__*) ;
 int EINVAL ;
 int ETHERSWITCH_PORT_CPU ;
 int ETHERSWITCH_PORT_DROPTAGGED ;
 int ETHERSWITCH_PORT_DROPUNTAGGED ;
 int IFM_1000_T ;
 int IFM_2500_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int PORT_CONTROL2 ;
 int PORT_CONTROL2_DISC_TAGGED ;
 int PORT_CONTROL2_DISC_UNTAGGED ;
 int REG_PORT (TYPE_2__*,scalar_t__) ;
 int SA_UNLOCKED ;
 int SIOCGIFMEDIA ;
 TYPE_2__* device_get_softc (int ) ;
 int e6000sw_get_pvid (TYPE_2__*,scalar_t__,int *) ;
 scalar_t__ e6000sw_is_cpuport (TYPE_2__*,scalar_t__) ;
 scalar_t__ e6000sw_is_fixed25port (TYPE_2__*,scalar_t__) ;
 scalar_t__ e6000sw_is_fixedport (TYPE_2__*,scalar_t__) ;
 int e6000sw_is_portenabled (TYPE_2__*,scalar_t__) ;
 struct mii_data* e6000sw_miiforphy (TYPE_2__*,scalar_t__) ;
 int e6000sw_readreg (TYPE_2__*,int ,int ) ;
 int ifmedia_ioctl (int ,int *,int *,int ) ;

__attribute__((used)) static int
e6000sw_getport(device_t dev, etherswitch_port_t *p)
{
 struct mii_data *mii;
 int err;
 struct ifmediareq *ifmr;
 uint32_t reg;

 e6000sw_softc_t *sc = device_get_softc(dev);
 E6000SW_LOCK_ASSERT(sc, SA_UNLOCKED);

 if (p->es_port >= sc->num_ports || p->es_port < 0)
  return (EINVAL);
 if (!e6000sw_is_portenabled(sc, p->es_port))
  return (0);

 E6000SW_LOCK(sc);
 e6000sw_get_pvid(sc, p->es_port, &p->es_pvid);


 reg = e6000sw_readreg(sc, REG_PORT(sc, p->es_port), PORT_CONTROL2);
 if (reg & PORT_CONTROL2_DISC_TAGGED)
  p->es_flags |= ETHERSWITCH_PORT_DROPTAGGED;
 if (reg & PORT_CONTROL2_DISC_UNTAGGED)
  p->es_flags |= ETHERSWITCH_PORT_DROPUNTAGGED;

 err = 0;
 if (e6000sw_is_fixedport(sc, p->es_port)) {
  if (e6000sw_is_cpuport(sc, p->es_port))
   p->es_flags |= ETHERSWITCH_PORT_CPU;
  ifmr = &p->es_ifmr;
  ifmr->ifm_status = IFM_ACTIVE | IFM_AVALID;
  ifmr->ifm_count = 0;
  if (e6000sw_is_fixed25port(sc, p->es_port))
   ifmr->ifm_active = IFM_2500_T;
  else
   ifmr->ifm_active = IFM_1000_T;
  ifmr->ifm_active |= IFM_ETHER | IFM_FDX;
  ifmr->ifm_current = ifmr->ifm_active;
  ifmr->ifm_mask = 0;
 } else {
  mii = e6000sw_miiforphy(sc, p->es_port);
  err = ifmedia_ioctl(mii->mii_ifp, &p->es_ifr,
      &mii->mii_media, SIOCGIFMEDIA);
 }
 E6000SW_UNLOCK(sc);

 return (err);
}
