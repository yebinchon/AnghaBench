
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32_t ;
struct mii_data {int mii_media; int mii_ifp; } ;
struct TYPE_15__ {scalar_t__ es_port; int es_flags; int es_ifr; int es_pvid; } ;
typedef TYPE_1__ etherswitch_port_t ;
struct TYPE_16__ {scalar_t__ num_ports; } ;
typedef TYPE_2__ e6000sw_softc_t ;
typedef int device_t ;


 int E6000SW_LOCK (TYPE_2__*) ;
 int E6000SW_LOCK_ASSERT (TYPE_2__*,int ) ;
 int E6000SW_UNLOCK (TYPE_2__*) ;
 int EINVAL ;
 int ETHERSWITCH_PORT_DROPTAGGED ;
 int ETHERSWITCH_PORT_DROPUNTAGGED ;
 int PORT_CONTROL2 ;
 int PORT_CONTROL2_DISC_TAGGED ;
 int PORT_CONTROL2_DISC_UNTAGGED ;
 int REG_PORT (TYPE_2__*,scalar_t__) ;
 int SA_UNLOCKED ;
 int SIOCSIFMEDIA ;
 TYPE_2__* device_get_softc (int ) ;
 scalar_t__ e6000sw_is_phyport (TYPE_2__*,scalar_t__) ;
 int e6000sw_is_portenabled (TYPE_2__*,scalar_t__) ;
 struct mii_data* e6000sw_miiforphy (TYPE_2__*,scalar_t__) ;
 int e6000sw_readreg (TYPE_2__*,int ,int ) ;
 int e6000sw_set_pvid (TYPE_2__*,scalar_t__,int ) ;
 int e6000sw_writereg (TYPE_2__*,int ,int ,int ) ;
 int ifmedia_ioctl (int ,int *,int *,int ) ;

__attribute__((used)) static int
e6000sw_setport(device_t dev, etherswitch_port_t *p)
{
 e6000sw_softc_t *sc;
 int err;
 struct mii_data *mii;
 uint32_t reg;

 sc = device_get_softc(dev);
 E6000SW_LOCK_ASSERT(sc, SA_UNLOCKED);

 if (p->es_port >= sc->num_ports || p->es_port < 0)
  return (EINVAL);
 if (!e6000sw_is_portenabled(sc, p->es_port))
  return (0);


 reg = e6000sw_readreg(sc, REG_PORT(sc, p->es_port), PORT_CONTROL2);
 if (p->es_flags & ETHERSWITCH_PORT_DROPTAGGED)
  reg |= PORT_CONTROL2_DISC_TAGGED;
 else
  reg &= ~PORT_CONTROL2_DISC_TAGGED;
 if (p->es_flags & ETHERSWITCH_PORT_DROPUNTAGGED)
  reg |= PORT_CONTROL2_DISC_UNTAGGED;
 else
  reg &= ~PORT_CONTROL2_DISC_UNTAGGED;
 e6000sw_writereg(sc, REG_PORT(sc, p->es_port), PORT_CONTROL2, reg);

 err = 0;
 E6000SW_LOCK(sc);
 if (p->es_pvid != 0)
  e6000sw_set_pvid(sc, p->es_port, p->es_pvid);
 if (e6000sw_is_phyport(sc, p->es_port)) {
  mii = e6000sw_miiforphy(sc, p->es_port);
  err = ifmedia_ioctl(mii->mii_ifp, &p->es_ifr, &mii->mii_media,
      SIOCSIFMEDIA);
 }
 E6000SW_UNLOCK(sc);

 return (err);
}
