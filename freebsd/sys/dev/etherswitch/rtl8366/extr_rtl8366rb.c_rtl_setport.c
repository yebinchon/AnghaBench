
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rtl8366rb_softc {int numphys; int* vid; int * ifp; int * miibus; scalar_t__ phy4cpu; } ;
struct ifmedia {int dummy; } ;
struct mii_data {struct ifmedia mii_media; } ;
struct TYPE_3__ {int es_port; int es_pvid; int es_ifr; } ;
typedef TYPE_1__ etherswitch_port_t ;
typedef int device_t ;


 int ENXIO ;
 int ETHERSWITCH_VID_MASK ;
 int RTL8366_NUM_VLANS ;
 int RTL8366_PVCR_PORT_MASK ;
 int RTL8366_PVCR_REG (int) ;
 int RTL8366_PVCR_VAL (int,int) ;
 int RTL_WAITOK ;
 int SIOCSIFMEDIA ;
 void* device_get_softc (int ) ;
 int ifmedia_ioctl (int ,int *,struct ifmedia*,int ) ;
 int smi_rmw (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
rtl_setport(device_t dev, etherswitch_port_t *p)
{
 struct rtl8366rb_softc *sc;
 int i, err, vlangroup;
 struct ifmedia *ifm;
 struct mii_data *mii;
 int port;

 sc = device_get_softc(dev);

 if (p->es_port < 0 || p->es_port >= (sc->numphys + 1))
  return (ENXIO);
 vlangroup = -1;
 for (i = 0; i < RTL8366_NUM_VLANS; i++) {
  if ((sc->vid[i] & ETHERSWITCH_VID_MASK) == p->es_pvid) {
   vlangroup = i;
   break;
  }
 }
 if (vlangroup == -1)
  return (ENXIO);
 if (sc->phy4cpu && p->es_port == sc->numphys) {
  port = p->es_port + 1;
 } else {
  port = p->es_port;
 }
 err = smi_rmw(dev, RTL8366_PVCR_REG(port),
     RTL8366_PVCR_VAL(port, RTL8366_PVCR_PORT_MASK),
     RTL8366_PVCR_VAL(port, vlangroup), RTL_WAITOK);
 if (err)
  return (err);

 if (p->es_port == sc->numphys)
  return (0);
 mii = device_get_softc(sc->miibus[p->es_port]);
 ifm = &mii->mii_media;
 err = ifmedia_ioctl(sc->ifp[p->es_port], &p->es_ifr, ifm, SIOCSIFMEDIA);
 return (err);
}
