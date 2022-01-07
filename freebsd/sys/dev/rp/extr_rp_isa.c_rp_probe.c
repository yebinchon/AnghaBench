
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_8__ {int io_num; int ** io; scalar_t__* io_rid; int * bus_ctlp; int ctlmask; int aiop2off; int aiop2rid; int dev; } ;
typedef int ISACONTROLLER_t ;
typedef TYPE_1__ CONTROLLER_t ;


 int ENOMEM ;
 int ENXIO ;
 int FREQ_DIS ;
 int MAX_AIOPS_PER_BOARD ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 void* bus_alloc_resource_anywhere (int ,int ,scalar_t__*,int,int ) ;
 scalar_t__ bus_get_resource_count (int ,int ,int ) ;
 int bzero (TYPE_1__*,int) ;
 TYPE_1__* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ isa_get_logicalid (int ) ;
 void* malloc (int,int ,int) ;
 TYPE_1__* rp_controller ;
 int rp_isa_aiop2off ;
 int rp_isa_aiop2rid ;
 int rp_isa_ctlmask ;
 int rp_isareleaseresource (TYPE_1__*) ;
 int rp_nisadevs ;
 int sInitController (TYPE_1__*,TYPE_1__*,int,int ,int ,int ) ;

__attribute__((used)) static int
rp_probe(device_t dev)
{
 int unit;
 CONTROLLER_t *controller;
 int num_aiops;
 CONTROLLER_t *ctlp;
 int retval;





 if (isa_get_logicalid(dev) != 0)
  return (ENXIO);


 if (bus_get_resource_count(dev, SYS_RES_IOPORT, 0) == 0)
  return (ENXIO);

 unit = device_get_unit(dev);
 if (unit >= 4) {
  device_printf(dev, "rpprobe: unit number %d invalid.\n", unit);
  return (ENXIO);
 }
 device_printf(dev, "probing for RocketPort(ISA) unit %d.\n", unit);

 ctlp = device_get_softc(dev);
 bzero(ctlp, sizeof(*ctlp));
 ctlp->dev = dev;
 ctlp->aiop2rid = rp_isa_aiop2rid;
 ctlp->aiop2off = rp_isa_aiop2off;
 ctlp->ctlmask = rp_isa_ctlmask;


 ctlp->io_num = 1;
 ctlp->io_rid = malloc(sizeof(*(ctlp->io_rid)) * MAX_AIOPS_PER_BOARD, M_DEVBUF, M_NOWAIT | M_ZERO);
 ctlp->io = malloc(sizeof(*(ctlp->io)) * MAX_AIOPS_PER_BOARD, M_DEVBUF, M_NOWAIT | M_ZERO);
 if (ctlp->io_rid == ((void*)0) || ctlp->io == ((void*)0)) {
  device_printf(dev, "rp_attach: Out of memory.\n");
  retval = ENOMEM;
  goto nogo;
 }

 ctlp->bus_ctlp = malloc(sizeof(ISACONTROLLER_t) * 1, M_DEVBUF, M_NOWAIT | M_ZERO);
 if (ctlp->bus_ctlp == ((void*)0)) {
  device_printf(dev, "rp_attach: Out of memory.\n");
  retval = ENOMEM;
  goto nogo;
 }

 ctlp->io_rid[0] = 0;
 if (rp_controller != ((void*)0)) {
  controller = rp_controller;
  ctlp->io[0] = bus_alloc_resource_anywhere(dev, SYS_RES_IOPORT, &ctlp->io_rid[0], 0x40, RF_ACTIVE);
 } else {
  controller = rp_controller = ctlp;
  ctlp->io[0] = bus_alloc_resource_anywhere(dev, SYS_RES_IOPORT, &ctlp->io_rid[0], 0x44, RF_ACTIVE);
 }
 if (ctlp->io[0] == ((void*)0)) {
  device_printf(dev, "rp_attach: Resource not available.\n");
  retval = ENXIO;
  goto nogo;
 }

 num_aiops = sInitController(ctlp,
    controller,
    MAX_AIOPS_PER_BOARD, 0,
    FREQ_DIS, 0);
 if (num_aiops <= 0) {
  device_printf(dev, "board%d init failed.\n", unit);
  retval = ENXIO;
  goto nogo;
 }

 if (rp_controller == ((void*)0))
  rp_controller = controller;
 rp_nisadevs++;

 device_set_desc(dev, "RocketPort ISA");

 return (0);

nogo:
 rp_isareleaseresource(ctlp);

 return (retval);
}
