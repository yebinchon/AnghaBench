
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int device_t ;
typedef TYPE_3__* bt3c_softc_p ;
struct TYPE_8__ {int ifq_mtx; int ifq_maxlen; } ;
struct TYPE_7__ {int ifq_mtx; int ifq_maxlen; } ;
struct TYPE_9__ {int want; scalar_t__ iobase_rid; int * iobase; scalar_t__ irq_rid; int * irq; int * irq_cookie; int * ith; int * node; int state; TYPE_2__ outq; TYPE_1__ inq; int debug; int dev; int ioh; int iot; } ;


 int BT3C_DEFAULTQLEN ;
 int ENXIO ;
 int INTR_TYPE_TTY ;
 int MTX_DEF ;
 int NG_BT3C_W4_PKT_IND ;
 int NG_BT3C_WARN_LEVEL ;
 int NG_NODE_SET_PRIVATE (int *,TYPE_3__*) ;
 int NG_NODE_UNREF (int *) ;
 int RF_ACTIVE ;
 int SWI_TTY ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bt3c_intr ;
 int bt3c_swi_intr ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int * bus_alloc_resource_anywhere (int ,int ,scalar_t__*,int,int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int ,int *,int ,TYPE_3__*,int **) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int device_get_nameunit (int ) ;
 int device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,char*,int *,int ) ;
 scalar_t__ ng_make_node_common (int *,int **) ;
 scalar_t__ ng_name_node (int *,int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 scalar_t__ swi_add (int *,int ,int ,TYPE_3__*,int ,int ,int **) ;
 int swi_remove (int *) ;
 int tty_intr_event ;
 int typestruct ;

__attribute__((used)) static int
bt3c_pccard_attach(device_t dev)
{
 bt3c_softc_p sc = (bt3c_softc_p) device_get_softc(dev);


 sc->iobase_rid = 0;
 sc->iobase = bus_alloc_resource_anywhere(dev, SYS_RES_IOPORT,
   &sc->iobase_rid, 8, RF_ACTIVE);
 if (sc->iobase == ((void*)0)) {
  device_printf(dev, "Could not allocate I/O ports\n");
  goto bad;
 }
 sc->iot = rman_get_bustag(sc->iobase);
 sc->ioh = rman_get_bushandle(sc->iobase);


 sc->irq_rid = 0;
 sc->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &sc->irq_rid,
   RF_ACTIVE);
 if (sc->irq == ((void*)0)) {
  device_printf(dev, "Could not allocate IRQ\n");
  goto bad;
 }

 sc->irq_cookie = ((void*)0);
 if (bus_setup_intr(dev, sc->irq, INTR_TYPE_TTY, ((void*)0), bt3c_intr, sc,
   &sc->irq_cookie) != 0) {
  device_printf(dev, "Could not setup ISR\n");
  goto bad;
 }


 sc->ith = ((void*)0);
 if (swi_add(&tty_intr_event, device_get_nameunit(dev),
   bt3c_swi_intr, sc, SWI_TTY, 0, &sc->ith) < 0) {
  device_printf(dev, "Could not setup SWI ISR\n");
  goto bad;
 }


 if (ng_make_node_common(&typestruct, &sc->node) != 0) {
  device_printf(dev, "Could not create Netgraph node\n");
  sc->node = ((void*)0);
  goto bad;
 }


 if (ng_name_node(sc->node, device_get_nameunit(dev)) != 0) {
  device_printf(dev, "Could not name Netgraph node\n");
  NG_NODE_UNREF(sc->node);
  sc->node = ((void*)0);
  goto bad;
 }

 sc->dev = dev;
 sc->debug = NG_BT3C_WARN_LEVEL;

 sc->inq.ifq_maxlen = sc->outq.ifq_maxlen = BT3C_DEFAULTQLEN;
 mtx_init(&sc->inq.ifq_mtx, "BT3C inq", ((void*)0), MTX_DEF);
 mtx_init(&sc->outq.ifq_mtx, "BT3C outq", ((void*)0), MTX_DEF);

 sc->state = NG_BT3C_W4_PKT_IND;
 sc->want = 1;

 NG_NODE_SET_PRIVATE(sc->node, sc);

 return (0);
bad:
 if (sc->ith != ((void*)0)) {
  swi_remove(sc->ith);
  sc->ith = ((void*)0);
 }

 if (sc->irq != ((void*)0)) {
  if (sc->irq_cookie != ((void*)0))
   bus_teardown_intr(dev, sc->irq, sc->irq_cookie);

  bus_release_resource(dev, SYS_RES_IRQ,
   sc->irq_rid, sc->irq);

  sc->irq = ((void*)0);
  sc->irq_rid = 0;
 }

 if (sc->iobase != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_IOPORT,
   sc->iobase_rid, sc->iobase);

  sc->iobase = ((void*)0);
  sc->iobase_rid = 0;
 }

 return (ENXIO);
}
