
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ifmedia {int dummy; } ;
struct mii_data {struct ifmedia mii_media; } ;
struct ifnet {int dummy; } ;
struct e6060sw_softc {size_t numports; scalar_t__ vlan_mode; scalar_t__* portphy; scalar_t__ cpuport; scalar_t__ smi_offset; } ;
struct TYPE_3__ {size_t es_port; int es_pvid; int es_ifr; } ;
typedef TYPE_1__ etherswitch_port_t ;
typedef int device_t ;


 scalar_t__ CORE_REGISTER ;
 int ENXIO ;
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ;
 int MDIO_READREG (int ,scalar_t__,int ) ;
 int MDIO_WRITEREG (int ,scalar_t__,int ,int) ;
 int PORT_DEFVLAN ;
 int SIOCSIFMEDIA ;
 int device_get_parent (int ) ;
 struct e6060sw_softc* device_get_softc (int ) ;
 struct ifnet* e6060sw_ifpforport (struct e6060sw_softc*,size_t) ;
 struct mii_data* e6060sw_miiforport (struct e6060sw_softc*,size_t) ;
 int ifmedia_ioctl (struct ifnet*,int *,struct ifmedia*,int ) ;

__attribute__((used)) static int
e6060sw_setport(device_t dev, etherswitch_port_t *p)
{
 struct e6060sw_softc *sc;
 struct ifmedia *ifm;
 struct mii_data *mii;
 struct ifnet *ifp;
 int err;
 int data;

 sc = device_get_softc(dev);

 if (p->es_port < 0 || p->es_port >= sc->numports)
  return (ENXIO);

 if (sc->vlan_mode == ETHERSWITCH_VLAN_DOT1Q) {
  data = MDIO_READREG(device_get_parent(dev),
      CORE_REGISTER + sc->smi_offset + p->es_port,
      PORT_DEFVLAN);
  data &= ~0xfff;
  data |= p->es_pvid;
  data |= 1 << 12;
  MDIO_WRITEREG(device_get_parent(dev),
      CORE_REGISTER + sc->smi_offset + p->es_port,
      PORT_DEFVLAN, data);
 }

 if (sc->portphy[p->es_port] == sc->cpuport)
  return(0);

 mii = e6060sw_miiforport(sc, p->es_port);
 if (mii == ((void*)0))
  return (ENXIO);

 ifp = e6060sw_ifpforport(sc, p->es_port);

 ifm = &mii->mii_media;
 err = ifmedia_ioctl(ifp, &p->es_ifr, ifm, SIOCSIFMEDIA);
 return (err);
}
