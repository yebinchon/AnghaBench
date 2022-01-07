
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ phandle_t ;
struct TYPE_20__ {int ports_mask; int kproc; int num_ports; int dev; int node; int sx; int sw_addr; } ;
typedef TYPE_1__ e6000sw_softc_t ;
typedef int device_t ;
struct TYPE_21__ {int es_nports; } ;


 int E6000SW_LOCK (TYPE_1__*) ;
 int E6000SW_UNLOCK (TYPE_1__*) ;
 int ENXIO ;
 int ETHERSWITCH_VLAN_PORT ;
 int MV88E6141 ;
 int MV88E6190 ;
 int MV88E6341 ;
 scalar_t__ MVSWITCH (TYPE_1__*,int ) ;
 scalar_t__ MVSWITCH_MULTICHIP (TYPE_1__*) ;
 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int PSC_CONTROL ;
 int PSC_CONTROL_ALT_SPD ;
 int PSC_CONTROL_FC_ON ;
 int PSC_CONTROL_FORCED_DPX ;
 int PSC_CONTROL_FORCED_EEE ;
 int PSC_CONTROL_FORCED_FC ;
 int PSC_CONTROL_FORCED_LINK ;
 int PSC_CONTROL_FORCED_SPD ;
 int PSC_CONTROL_FULLDPX ;
 int PSC_CONTROL_LINK_UP ;
 int PSC_CONTROL_SPD1000 ;
 int PSC_CONTROL_SPD2500 ;
 int REG_GLOBAL ;
 int REG_PORT (TYPE_1__*,int) ;
 int SWITCH_GLOBAL_STATUS ;
 int SWITCH_GLOBAL_STATUS_IR ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 TYPE_1__* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int e6000sw_attach_miibus (TYPE_1__*,int) ;
 int e6000sw_detach (int ) ;
 int e6000sw_init_interface (TYPE_1__*,int) ;
 scalar_t__ e6000sw_is_fixed25port (TYPE_1__*,int) ;
 scalar_t__ e6000sw_is_fixedport (TYPE_1__*,int) ;
 int e6000sw_is_phyport (TYPE_1__*,int) ;
 int e6000sw_parse_child_fdt (TYPE_1__*,scalar_t__,int*) ;
 int e6000sw_readreg (TYPE_1__*,int ,int ) ;
 int e6000sw_serdes_power (int ,int,int) ;
 int e6000sw_set_vlan_mode (TYPE_1__*,int ) ;
 int e6000sw_setup (int ,TYPE_1__*) ;
 int e6000sw_tick ;
 int e6000sw_writereg (TYPE_1__*,int ,int ,int) ;
 TYPE_3__ etherswitch_info ;
 int kproc_create (int ,TYPE_1__*,int *,int ,int ,char*) ;
 scalar_t__ ofw_bus_find_child (int ,char*) ;
 int sx_init (int *,char*) ;

__attribute__((used)) static int
e6000sw_attach(device_t dev)
{
 bool sgmii;
 e6000sw_softc_t *sc;
 phandle_t child, ports;
 int err, port;
 uint32_t reg;

 err = 0;
 sc = device_get_softc(dev);






 if (MVSWITCH_MULTICHIP(sc))
  device_printf(dev, "multi-chip addressing mode (%#x)\n",
      sc->sw_addr);
 else
  device_printf(dev, "single-chip addressing mode\n");

 sx_init(&sc->sx, "e6000sw");

 E6000SW_LOCK(sc);
 e6000sw_setup(dev, sc);

 ports = ofw_bus_find_child(sc->node, "ports");

 if (ports == 0) {
  device_printf(dev, "failed to parse DTS: no ports found for "
      "switch\n");
  return (ENXIO);
 }

 for (child = OF_child(ports); child != 0; child = OF_peer(child)) {
  err = e6000sw_parse_child_fdt(sc, child, &port);
  if (err != 0) {
   device_printf(sc->dev, "failed to parse DTS\n");
   goto out_fail;
  }


  sc->ports_mask |= (1 << port);

  err = e6000sw_init_interface(sc, port);
  if (err != 0) {
   device_printf(sc->dev, "failed to init interface\n");
   goto out_fail;
  }

  if (e6000sw_is_fixedport(sc, port)) {

   reg = e6000sw_readreg(sc, REG_PORT(sc, port),
       PSC_CONTROL);
   reg &= ~PSC_CONTROL_LINK_UP;
   reg |= PSC_CONTROL_FORCED_LINK;
   e6000sw_writereg(sc, REG_PORT(sc, port), PSC_CONTROL,
       reg);





   reg &= ~(PSC_CONTROL_SPD2500 | PSC_CONTROL_ALT_SPD |
       PSC_CONTROL_FORCED_FC | PSC_CONTROL_FC_ON |
       PSC_CONTROL_FORCED_EEE);
   if (e6000sw_is_fixed25port(sc, port))
    reg |= PSC_CONTROL_SPD2500;
   else
    reg |= PSC_CONTROL_SPD1000;
   if (MVSWITCH(sc, MV88E6190) &&
       e6000sw_is_fixed25port(sc, port))
    reg |= PSC_CONTROL_ALT_SPD;
   reg |= PSC_CONTROL_FORCED_DPX | PSC_CONTROL_FULLDPX |
       PSC_CONTROL_FORCED_LINK | PSC_CONTROL_LINK_UP |
       PSC_CONTROL_FORCED_SPD;
   if (!MVSWITCH(sc, MV88E6190))
    reg |= PSC_CONTROL_FORCED_FC | PSC_CONTROL_FC_ON;
   if (MVSWITCH(sc, MV88E6141) ||
       MVSWITCH(sc, MV88E6341) ||
       MVSWITCH(sc, MV88E6190))
    reg |= PSC_CONTROL_FORCED_EEE;
   e6000sw_writereg(sc, REG_PORT(sc, port), PSC_CONTROL,
       reg);

   if (MVSWITCH(sc, MV88E6190) &&
       (port == 9 || port == 10)) {
    if (e6000sw_is_fixed25port(sc, port))
     sgmii = 0;
    else
     sgmii = 1;
    e6000sw_serdes_power(sc->dev, port, sgmii);
   }
  }


  if (!e6000sw_is_phyport(sc, port))
   continue;

  err = e6000sw_attach_miibus(sc, port);
  if (err != 0) {
   device_printf(sc->dev, "failed to attach miibus\n");
   goto out_fail;
  }
 }

 etherswitch_info.es_nports = sc->num_ports;


 e6000sw_set_vlan_mode(sc, ETHERSWITCH_VLAN_PORT);

 reg = e6000sw_readreg(sc, REG_GLOBAL, SWITCH_GLOBAL_STATUS);
 if (reg & SWITCH_GLOBAL_STATUS_IR)
  device_printf(dev, "switch is ready.\n");
 E6000SW_UNLOCK(sc);

 bus_generic_probe(dev);
 bus_generic_attach(dev);

 kproc_create(e6000sw_tick, sc, &sc->kproc, 0, 0, "e6000sw tick kproc");

 return (0);

out_fail:
 E6000SW_UNLOCK(sc);
 e6000sw_detach(dev);

 return (err);
}
