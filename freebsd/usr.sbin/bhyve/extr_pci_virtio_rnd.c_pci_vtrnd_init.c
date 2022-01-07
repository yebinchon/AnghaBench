
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int v ;
typedef int uint8_t ;
struct vmctx {int dummy; } ;
struct TYPE_5__ {int * vs_mtx; } ;
struct TYPE_6__ {int vq_qsize; } ;
struct pci_vtrnd_softc {int vrsc_fd; TYPE_1__ vrsc_vs; TYPE_2__ vrsc_vq; int vrsc_mtx; } ;
struct pci_devinst {int dummy; } ;
typedef int cap_rights_t ;


 int CAP_READ ;
 int EX_OSERR ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int PCIC_CRYPTO ;
 int PCIR_CLASS ;
 int PCIR_DEVICE ;
 int PCIR_SUBDEV_0 ;
 int PCIR_SUBVEND_0 ;
 int PCIR_VENDOR ;
 int VIRTIO_DEV_RANDOM ;
 int VIRTIO_TYPE_ENTROPY ;
 int VIRTIO_VENDOR ;
 int VTRND_RINGSZ ;
 int WPRINTF (char*) ;
 int assert (int) ;
 struct pci_vtrnd_softc* calloc (int,int) ;
 int cap_rights_init (int *,int ) ;
 int caph_rights_limit (int,int *) ;
 int close (int) ;
 int errx (int ,char*) ;
 int fbsdrun_virtio_msix () ;
 int open (char*,int) ;
 int pci_set_cfgdata16 (struct pci_devinst*,int ,int ) ;
 int pci_set_cfgdata8 (struct pci_devinst*,int ,int ) ;
 int read (int,int *,int) ;
 scalar_t__ vi_intr_init (TYPE_1__*,int,int ) ;
 int vi_set_io_bar (TYPE_1__*,int ) ;
 int vi_softc_linkup (TYPE_1__*,int *,struct pci_vtrnd_softc*,struct pci_devinst*,TYPE_2__*) ;
 int vtrnd_vi_consts ;

__attribute__((used)) static int
pci_vtrnd_init(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{
 struct pci_vtrnd_softc *sc;
 int fd;
 int len;
 uint8_t v;

 cap_rights_t rights;





 fd = open("/dev/random", O_RDONLY | O_NONBLOCK);

 assert(fd >= 0);


 cap_rights_init(&rights, CAP_READ);
 if (caph_rights_limit(fd, &rights) == -1)
  errx(EX_OSERR, "Unable to apply rights for sandbox");





 len = read(fd, &v, sizeof(v));
 if (len <= 0) {
  WPRINTF(("vtrnd: /dev/random not ready, read(): %d", len));
  close(fd);
  return (1);
 }

 sc = calloc(1, sizeof(struct pci_vtrnd_softc));

 vi_softc_linkup(&sc->vrsc_vs, &vtrnd_vi_consts, sc, pi, &sc->vrsc_vq);
 sc->vrsc_vs.vs_mtx = &sc->vrsc_mtx;

 sc->vrsc_vq.vq_qsize = VTRND_RINGSZ;


 sc->vrsc_fd = fd;


 pci_set_cfgdata16(pi, PCIR_DEVICE, VIRTIO_DEV_RANDOM);
 pci_set_cfgdata16(pi, PCIR_VENDOR, VIRTIO_VENDOR);
 pci_set_cfgdata8(pi, PCIR_CLASS, PCIC_CRYPTO);
 pci_set_cfgdata16(pi, PCIR_SUBDEV_0, VIRTIO_TYPE_ENTROPY);
 pci_set_cfgdata16(pi, PCIR_SUBVEND_0, VIRTIO_VENDOR);

 if (vi_intr_init(&sc->vrsc_vs, 1, fbsdrun_virtio_msix()))
  return (1);
 vi_set_io_bar(&sc->vrsc_vs, 0);

 return (0);
}
