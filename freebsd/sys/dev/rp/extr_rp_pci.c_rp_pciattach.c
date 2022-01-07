
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_9__ {int io_num; int ** io; void** io_rid; int * bus_ctlp; int ctlmask; int aiop2off; int aiop2rid; int dev; } ;
typedef TYPE_1__ CONTROLLER_t ;


 int ENOMEM ;
 int ENXIO ;
 int FREQ_DIS ;
 int MAX_AIOPS_PER_BOARD ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 void* PCIR_BAR (int) ;
 int RF_ACTIVE ;



 int SYS_RES_IOPORT ;
 int * bus_alloc_resource_any (int ,int ,void**,int ) ;
 int bzero (TYPE_1__*,int) ;
 TYPE_1__* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 void* malloc (int,int ,int) ;
 int pci_get_device (int ) ;
 int rp_attachcommon (TYPE_1__*,int,int) ;
 int rp_pci_aiop2off ;
 int rp_pci_aiop2rid ;
 int rp_pci_ctlmask ;
 int rp_pcireleaseresource (TYPE_1__*) ;
 scalar_t__ sGetAiopNumChan (TYPE_1__*,int) ;
 int sPCIInitController (TYPE_1__*,int ,int ,int ,int ,int) ;
 int sResetAiopByNum (TYPE_1__*,int) ;

__attribute__((used)) static int
rp_pciattach(device_t dev)
{
 int num_ports, num_aiops;
 int aiop;
 CONTROLLER_t *ctlp;
 int unit;
 int retval;

 ctlp = device_get_softc(dev);
 bzero(ctlp, sizeof(*ctlp));
 ctlp->dev = dev;
 unit = device_get_unit(dev);
 ctlp->aiop2rid = rp_pci_aiop2rid;
 ctlp->aiop2off = rp_pci_aiop2off;
 ctlp->ctlmask = rp_pci_ctlmask;


 ctlp->io_num = 1;
 ctlp->io_rid = malloc(sizeof(*(ctlp->io_rid)) * ctlp->io_num, M_DEVBUF, M_NOWAIT | M_ZERO);
 ctlp->io = malloc(sizeof(*(ctlp->io)) * ctlp->io_num, M_DEVBUF, M_NOWAIT | M_ZERO);
 if (ctlp->io_rid == ((void*)0) || ctlp->io == ((void*)0)) {
  device_printf(dev, "rp_pciattach: Out of memory.\n");
  retval = ENOMEM;
  goto nogo;
 }

 ctlp->bus_ctlp = ((void*)0);

 switch (pci_get_device(dev)) {
 case 130:
 case 129:
 case 128:
  ctlp->io_rid[0] = PCIR_BAR(2);
  break;
 default:
  ctlp->io_rid[0] = PCIR_BAR(0);
  break;
 }
 ctlp->io[0] = bus_alloc_resource_any(dev, SYS_RES_IOPORT,
  &ctlp->io_rid[0], RF_ACTIVE);
 if(ctlp->io[0] == ((void*)0)) {
  device_printf(dev, "ioaddr mapping failed for RocketPort(PCI).\n");
  retval = ENXIO;
  goto nogo;
 }

 num_aiops = sPCIInitController(ctlp,
           MAX_AIOPS_PER_BOARD, 0,
           FREQ_DIS, 0, pci_get_device(dev));

 num_ports = 0;
 for(aiop=0; aiop < num_aiops; aiop++) {
  sResetAiopByNum(ctlp, aiop);
  num_ports += sGetAiopNumChan(ctlp, aiop);
 }

 retval = rp_attachcommon(ctlp, num_aiops, num_ports);
 if (retval != 0)
  goto nogo;

 return (0);

nogo:
 rp_pcireleaseresource(ctlp);

 return (retval);
}
