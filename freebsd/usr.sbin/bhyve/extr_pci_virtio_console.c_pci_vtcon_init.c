
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vmctx {int dummy; } ;
struct TYPE_8__ {int vsp_txq; int vsp_rxq; int vsp_enabled; int vsp_cb; struct pci_vtcon_softc* vsp_sc; } ;
struct TYPE_9__ {int * vs_mtx; } ;
struct pci_vtcon_softc {TYPE_2__ vsc_control_port; TYPE_3__ vsc_vs; TYPE_4__* vsc_queues; int vsc_mtx; TYPE_1__* vsc_config; } ;
struct pci_vtcon_config {int dummy; } ;
struct pci_devinst {int dummy; } ;
struct TYPE_10__ {int vq_notify; int vq_qsize; } ;
struct TYPE_7__ {int cols; int rows; int max_nr_ports; } ;


 int PCIC_SIMPLECOMM ;
 int PCIR_CLASS ;
 int PCIR_DEVICE ;
 int PCIR_SUBDEV_0 ;
 int PCIR_SUBVEND_0 ;
 int PCIR_VENDOR ;
 int VIRTIO_DEV_CONSOLE ;
 int VIRTIO_TYPE_CONSOLE ;
 int VIRTIO_VENDOR ;
 int VTCON_MAXPORTS ;
 int VTCON_MAXQ ;
 int VTCON_RINGSZ ;
 void* calloc (int,int) ;
 int errno ;
 int fbsdrun_virtio_msix () ;
 int fprintf (int ,char*,char*,char*) ;
 int pci_set_cfgdata16 (struct pci_devinst*,int ,int ) ;
 int pci_set_cfgdata8 (struct pci_devinst*,int ,int ) ;
 int pci_vtcon_control_tx ;
 int pci_vtcon_notify_rx ;
 int pci_vtcon_notify_tx ;
 scalar_t__ pci_vtcon_sock_add (struct pci_vtcon_softc*,char*,char*) ;
 int stderr ;
 char* strerror (int ) ;
 char* strsep (char**,char*) ;
 scalar_t__ vi_intr_init (TYPE_3__*,int,int ) ;
 int vi_set_io_bar (TYPE_3__*,int ) ;
 int vi_softc_linkup (TYPE_3__*,int *,struct pci_vtcon_softc*,struct pci_devinst*,TYPE_4__*) ;
 int vtcon_vi_consts ;

__attribute__((used)) static int
pci_vtcon_init(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{
 struct pci_vtcon_softc *sc;
 char *portname = ((void*)0);
 char *portpath = ((void*)0);
 char *opt;
 int i;

 sc = calloc(1, sizeof(struct pci_vtcon_softc));
 sc->vsc_config = calloc(1, sizeof(struct pci_vtcon_config));
 sc->vsc_config->max_nr_ports = VTCON_MAXPORTS;
 sc->vsc_config->cols = 80;
 sc->vsc_config->rows = 25;

 vi_softc_linkup(&sc->vsc_vs, &vtcon_vi_consts, sc, pi, sc->vsc_queues);
 sc->vsc_vs.vs_mtx = &sc->vsc_mtx;

 for (i = 0; i < VTCON_MAXQ; i++) {
  sc->vsc_queues[i].vq_qsize = VTCON_RINGSZ;
  sc->vsc_queues[i].vq_notify = i % 2 == 0
      ? pci_vtcon_notify_rx
      : pci_vtcon_notify_tx;
 }


 pci_set_cfgdata16(pi, PCIR_DEVICE, VIRTIO_DEV_CONSOLE);
 pci_set_cfgdata16(pi, PCIR_VENDOR, VIRTIO_VENDOR);
 pci_set_cfgdata8(pi, PCIR_CLASS, PCIC_SIMPLECOMM);
 pci_set_cfgdata16(pi, PCIR_SUBDEV_0, VIRTIO_TYPE_CONSOLE);
 pci_set_cfgdata16(pi, PCIR_SUBVEND_0, VIRTIO_VENDOR);

 if (vi_intr_init(&sc->vsc_vs, 1, fbsdrun_virtio_msix()))
  return (1);
 vi_set_io_bar(&sc->vsc_vs, 0);


 sc->vsc_control_port.vsp_sc = sc;
 sc->vsc_control_port.vsp_txq = 2;
 sc->vsc_control_port.vsp_rxq = 3;
 sc->vsc_control_port.vsp_cb = pci_vtcon_control_tx;
 sc->vsc_control_port.vsp_enabled = 1;

 while ((opt = strsep(&opts, ",")) != ((void*)0)) {
  portname = strsep(&opt, "=");
  portpath = opt;


  if (pci_vtcon_sock_add(sc, portname, portpath) < 0) {
   fprintf(stderr, "cannot create port %s: %s\n",
       portname, strerror(errno));
   return (1);
  }
 }

 return (0);
}
