
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int es_nports; int es_name; int es_vlan_caps; int es_nvlangroups; } ;
struct rtl8366rb_softc {int numphys; scalar_t__ chip_type; int callout_mtx; int callout_tick; TYPE_2__** ifp; int * miibus; int * ifname; TYPE_1__ info; scalar_t__ phy4cpu; scalar_t__ smi_acquired; int sc_mtx; int dev; } ;
typedef int device_t ;
struct TYPE_6__ {int if_flags; struct rtl8366rb_softc* if_softc; } ;


 int BMSR_DEFCAPMASK ;
 int ENOMEM ;
 int ETHERSWITCH_VLAN_DOT1Q ;
 int IFF_BROADCAST ;
 int IFF_DRV_RUNNING ;
 int IFF_SIMPLEX ;
 int IFF_UP ;
 int IFNAMSIZ ;
 int IFT_ETHER ;
 int MII_OFFSET_ANY ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_WAITOK ;
 scalar_t__ RTL8366RB ;
 int RTL8366_CVCR ;
 int RTL8366_NUM_PHYS ;
 int RTL8366_NUM_VLANS ;
 int RTL_WAITOK ;
 int bcopy (char*,int ,scalar_t__) ;
 int bus_enumerate_hinted_children (int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 char* device_get_nameunit (int ) ;
 struct rtl8366rb_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 TYPE_2__* if_alloc (int ) ;
 int if_initname (TYPE_2__*,int ,int) ;
 int malloc (scalar_t__,int ,int ) ;
 int mii_attach (int ,int *,TYPE_2__*,int ,int ,int ,int,int ,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int resource_int_value (int ,int ,char*,scalar_t__*) ;
 int rtl8366rb_ifmedia_sts ;
 int rtl8366rb_ifmedia_upd ;
 int rtl8366rb_init (int ) ;
 int rtl8366rb_tick (struct rtl8366rb_softc*) ;
 int smi_read (int ,int ,int*,int ) ;
 int snprintf (char*,int,char*,char*) ;
 int sprintf (int ,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
rtl8366rb_attach(device_t dev)
{
 struct rtl8366rb_softc *sc;
 uint16_t rev = 0;
 char name[IFNAMSIZ];
 int err = 0;
 int i;

 sc = device_get_softc(dev);

 sc->dev = dev;
 mtx_init(&sc->sc_mtx, "rtl8366rb", ((void*)0), MTX_DEF);
 sc->smi_acquired = 0;
 mtx_init(&sc->callout_mtx, "rtl8366rbcallout", ((void*)0), MTX_DEF);

 rtl8366rb_init(dev);
 smi_read(dev, RTL8366_CVCR, &rev, RTL_WAITOK);
 device_printf(dev, "rev. %d\n", rev & 0x000f);

 sc->phy4cpu = 0;
 (void) resource_int_value(device_get_name(dev), device_get_unit(dev),
     "phy4cpu", &sc->phy4cpu);

 sc->numphys = sc->phy4cpu ? RTL8366_NUM_PHYS - 1 : RTL8366_NUM_PHYS;

 sc->info.es_nports = sc->numphys + 1;
 sc->info.es_nvlangroups = RTL8366_NUM_VLANS;
 sc->info.es_vlan_caps = ETHERSWITCH_VLAN_DOT1Q;
 if (sc->chip_type == RTL8366RB)
  sprintf(sc->info.es_name, "Realtek RTL8366RB");
 else
  sprintf(sc->info.es_name, "Realtek RTL8366SR");



 for (i = 0; i < sc->numphys; i++) {
  sc->ifp[i] = if_alloc(IFT_ETHER);
  if (sc->ifp[i] == ((void*)0)) {
   device_printf(dev, "couldn't allocate ifnet structure\n");
   err = ENOMEM;
   break;
  }

  sc->ifp[i]->if_softc = sc;
  sc->ifp[i]->if_flags |= IFF_UP | IFF_BROADCAST | IFF_DRV_RUNNING
   | IFF_SIMPLEX;
  snprintf(name, IFNAMSIZ, "%sport", device_get_nameunit(dev));
  sc->ifname[i] = malloc(strlen(name)+1, M_DEVBUF, M_WAITOK);
  bcopy(name, sc->ifname[i], strlen(name)+1);
  if_initname(sc->ifp[i], sc->ifname[i], i);
  err = mii_attach(dev, &sc->miibus[i], sc->ifp[i], rtl8366rb_ifmedia_upd, rtl8366rb_ifmedia_sts, BMSR_DEFCAPMASK, i, MII_OFFSET_ANY, 0);


  if (err != 0) {
   device_printf(dev, "attaching PHY %d failed\n", i);
   return (err);
  }
 }

 bus_generic_probe(dev);
 bus_enumerate_hinted_children(dev);
 err = bus_generic_attach(dev);
 if (err != 0)
  return (err);

 callout_init_mtx(&sc->callout_tick, &sc->callout_mtx, 0);
 rtl8366rb_tick(sc);

 return (err);
}
