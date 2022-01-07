
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bst; int bsh; } ;
struct tsec_softc {int transmit_lock; int receive_lock; int * sc_rres; scalar_t__ sc_rrid; int sc_transmit_irid; int sc_transmit_ihand; int sc_transmit_ires; int sc_receive_irid; int sc_receive_ihand; int sc_receive_ires; int sc_error_irid; int sc_error_ihand; int sc_error_ires; TYPE_1__ sc_bas; int ic_lock; int tsec_callout; int phy_regoff; int phyaddr; int phy_bsh; int phy_bst; int node; int dev; } ;
struct resource_list {int dummy; } ;
typedef int phy ;
typedef int phandle_t ;
typedef int device_t ;


 struct resource_list* BUS_GET_RESOURCE_LIST (int ,int ) ;
 int ENXIO ;
 int MTX_DEF ;
 int OF_child (int ) ;
 int OF_decode_addr (int ,int ,int *,int *,int *) ;
 scalar_t__ OF_getencprop (int ,char*,int *,int) ;
 int OF_node_from_xref (int ) ;
 int OF_parent (int ) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int TSEC_REG_MIIBASE ;
 int TSEC_RID_ERRIRQ ;
 int TSEC_RID_RXIRQ ;
 int TSEC_RID_TXIRQ ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 int callout_init (int *,int) ;
 int device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 struct tsec_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ fdt_addrsize_cells (int ,int*,int*) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,char*,int ) ;
 int ofw_bus_get_node (int ) ;
 int ofw_bus_intr_to_rl (int ,int ,struct resource_list*,int *) ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;
 scalar_t__ ofw_bus_node_is_compatible (int ,char*) ;
 int ofw_bus_reg_to_rl (int ,int ,int,int,struct resource_list*) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 scalar_t__ tsec_attach (struct tsec_softc*) ;
 int tsec_error_intr ;
 int tsec_receive_intr ;
 int tsec_release_intr (struct tsec_softc*,int ,int ,int ,char*) ;
 int tsec_setup_intr (struct tsec_softc*,int *,int *,int *,int ,char*) ;
 int tsec_transmit_intr ;

__attribute__((used)) static int
tsec_fdt_attach(device_t dev)
{
 struct tsec_softc *sc;
 struct resource_list *rl;
 phandle_t child, mdio, phy;
 int acells, scells;
 int error = 0;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->node = ofw_bus_get_node(dev);

 if (fdt_addrsize_cells(sc->node, &acells, &scells) != 0) {
  acells = 1;
  scells = 1;
 }
 if (ofw_bus_is_compatible(dev, "fsl,etsec2")) {
  rl = BUS_GET_RESOURCE_LIST(device_get_parent(dev), dev);





  child = OF_child(sc->node);
  ofw_bus_reg_to_rl(dev, child, acells, scells, rl);
  ofw_bus_intr_to_rl(dev, child, rl, ((void*)0));
 }


 if (OF_getencprop(sc->node, "phy-handle", &phy, sizeof(phy)) <= 0) {
  device_printf(dev, "PHY not found in device tree");
  return (ENXIO);
 }

 phy = OF_node_from_xref(phy);
 mdio = OF_parent(phy);
 OF_decode_addr(mdio, 0, &sc->phy_bst, &sc->phy_bsh, ((void*)0));
 OF_getencprop(phy, "reg", &sc->phyaddr, sizeof(sc->phyaddr));





 if (ofw_bus_node_is_compatible(mdio, "fsl,etsec2-mdio"))
  sc->phy_regoff = TSEC_REG_MIIBASE;


 callout_init(&sc->tsec_callout, 1);


 mtx_init(&sc->transmit_lock, device_get_nameunit(dev), "TSEC TX lock",
     MTX_DEF);
 mtx_init(&sc->receive_lock, device_get_nameunit(dev), "TSEC RX lock",
     MTX_DEF);
 mtx_init(&sc->ic_lock, device_get_nameunit(dev), "TSEC IC lock",
     MTX_DEF);


 sc->sc_rrid = 0;
 sc->sc_rres = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->sc_rrid,
     RF_ACTIVE);
 if (sc->sc_rres == ((void*)0)) {
  device_printf(dev, "could not allocate IO memory range!\n");
  goto fail1;
 }
 sc->sc_bas.bsh = rman_get_bushandle(sc->sc_rres);
 sc->sc_bas.bst = rman_get_bustag(sc->sc_rres);


 if (tsec_attach(sc) != 0) {
  device_printf(dev, "could not be configured\n");
  goto fail2;
 }


 sc->sc_transmit_irid = TSEC_RID_TXIRQ;
 error = tsec_setup_intr(sc, &sc->sc_transmit_ires,
     &sc->sc_transmit_ihand, &sc->sc_transmit_irid,
     tsec_transmit_intr, "TX");
 if (error)
  goto fail2;

 sc->sc_receive_irid = TSEC_RID_RXIRQ;
 error = tsec_setup_intr(sc, &sc->sc_receive_ires,
     &sc->sc_receive_ihand, &sc->sc_receive_irid,
     tsec_receive_intr, "RX");
 if (error)
  goto fail3;

 sc->sc_error_irid = TSEC_RID_ERRIRQ;
 error = tsec_setup_intr(sc, &sc->sc_error_ires,
     &sc->sc_error_ihand, &sc->sc_error_irid,
     tsec_error_intr, "ERR");
 if (error)
  goto fail4;

 return (0);

fail4:
 tsec_release_intr(sc, sc->sc_receive_ires, sc->sc_receive_ihand,
     sc->sc_receive_irid, "RX");
fail3:
 tsec_release_intr(sc, sc->sc_transmit_ires, sc->sc_transmit_ihand,
     sc->sc_transmit_irid, "TX");
fail2:
 bus_release_resource(dev, SYS_RES_MEMORY, sc->sc_rrid, sc->sc_rres);
fail1:
 mtx_destroy(&sc->receive_lock);
 mtx_destroy(&sc->transmit_lock);
 return (ENXIO);
}
