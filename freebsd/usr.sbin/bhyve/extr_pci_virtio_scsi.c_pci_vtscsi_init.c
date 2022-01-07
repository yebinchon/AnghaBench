
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vmctx {int dummy; } ;
struct TYPE_5__ {int * vs_mtx; } ;
struct pci_vtscsi_softc {scalar_t__ vss_ctl_fd; TYPE_1__ vss_vs; int * vss_queues; TYPE_2__* vss_vq; int vss_mtx; int vss_iid; } ;
struct pci_devinst {int dummy; } ;
struct TYPE_6__ {int vq_notify; void* vq_qsize; } ;


 int O_RDWR ;
 int PCIC_STORAGE ;
 int PCIR_CLASS ;
 int PCIR_DEVICE ;
 int PCIR_SUBDEV_0 ;
 int PCIR_SUBVEND_0 ;
 int PCIR_VENDOR ;
 int VIRTIO_DEV_SCSI ;
 int VIRTIO_TYPE_SCSI ;
 int VIRTIO_VENDOR ;
 int VTSCSI_MAXQ ;
 void* VTSCSI_RINGSZ ;
 int WPRINTF (char*) ;
 struct pci_vtscsi_softc* calloc (int,int) ;
 int errno ;
 int fbsdrun_virtio_msix () ;
 int fprintf (int ,char*,char*) ;
 int free (struct pci_vtscsi_softc*) ;
 scalar_t__ open (char const*,int ) ;
 int pci_set_cfgdata16 (struct pci_devinst*,int ,int ) ;
 int pci_set_cfgdata8 (struct pci_devinst*,int ,int ) ;
 int pci_vtscsi_controlq_notify ;
 int pci_vtscsi_eventq_notify ;
 int pci_vtscsi_init_queue (struct pci_vtscsi_softc*,int *,int) ;
 int pci_vtscsi_requestq_notify ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int strerror (int ) ;
 char* strsep (char**,char*) ;
 int strtoul (char*,int *,int) ;
 scalar_t__ vi_intr_init (TYPE_1__*,int,int ) ;
 int vi_set_io_bar (TYPE_1__*,int ) ;
 int vi_softc_linkup (TYPE_1__*,int *,struct pci_vtscsi_softc*,struct pci_devinst*,TYPE_2__*) ;
 int vtscsi_vi_consts ;

__attribute__((used)) static int
pci_vtscsi_init(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{
 struct pci_vtscsi_softc *sc;
 char *opt, *optname;
 const char *devname;
 int i, optidx = 0;

 sc = calloc(1, sizeof(struct pci_vtscsi_softc));
 devname = "/dev/cam/ctl";
 while ((opt = strsep(&opts, ",")) != ((void*)0)) {
  optname = strsep(&opt, "=");
  if (opt == ((void*)0) && optidx == 0) {
   if (optname[0] != 0)
    devname = optname;
  } else if (strcmp(optname, "dev") == 0 && opt != ((void*)0)) {
   devname = opt;
  } else if (strcmp(optname, "iid") == 0 && opt != ((void*)0)) {
   sc->vss_iid = strtoul(opt, ((void*)0), 10);
  } else {
   fprintf(stderr, "Invalid option %s\n", optname);
   free(sc);
   return (1);
  }
  optidx++;
 }

 sc->vss_ctl_fd = open(devname, O_RDWR);
 if (sc->vss_ctl_fd < 0) {
  WPRINTF(("cannot open %s: %s\n", devname, strerror(errno)));
  free(sc);
  return (1);
 }

 vi_softc_linkup(&sc->vss_vs, &vtscsi_vi_consts, sc, pi, sc->vss_vq);
 sc->vss_vs.vs_mtx = &sc->vss_mtx;


 sc->vss_vq[0].vq_qsize = VTSCSI_RINGSZ;
 sc->vss_vq[0].vq_notify = pci_vtscsi_controlq_notify;


 sc->vss_vq[1].vq_qsize = VTSCSI_RINGSZ;
 sc->vss_vq[1].vq_notify = pci_vtscsi_eventq_notify;


 for (i = 2; i < VTSCSI_MAXQ; i++) {
  sc->vss_vq[i].vq_qsize = VTSCSI_RINGSZ;
  sc->vss_vq[i].vq_notify = pci_vtscsi_requestq_notify;
  pci_vtscsi_init_queue(sc, &sc->vss_queues[i - 2], i - 2);
 }


 pci_set_cfgdata16(pi, PCIR_DEVICE, VIRTIO_DEV_SCSI);
 pci_set_cfgdata16(pi, PCIR_VENDOR, VIRTIO_VENDOR);
 pci_set_cfgdata8(pi, PCIR_CLASS, PCIC_STORAGE);
 pci_set_cfgdata16(pi, PCIR_SUBDEV_0, VIRTIO_TYPE_SCSI);
 pci_set_cfgdata16(pi, PCIR_SUBVEND_0, VIRTIO_VENDOR);

 if (vi_intr_init(&sc->vss_vs, 1, fbsdrun_virtio_msix()))
  return (1);
 vi_set_io_bar(&sc->vss_vs, 0);

 return (0);
}
