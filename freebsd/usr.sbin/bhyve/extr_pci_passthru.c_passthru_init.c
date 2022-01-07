
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int dummy; } ;
struct pci_devinst {struct passthru_softc* pi_arg; } ;
struct passthru_softc {struct pci_devinst* psc_pi; } ;
typedef int cap_rights_t ;
typedef int cap_ioctl_t ;


 int CAP_IOCTL ;
 int CAP_MMAP_RW ;
 int CAP_READ ;
 int CAP_WRITE ;
 int EX_OSERR ;
 int IODEV_PIO ;
 int O_RDWR ;
 int PCIOCGETBAR ;
 int PCIOCREAD ;
 int PCIOCWRITE ;
 int VM_MEM_F_WIRED ;
 int _PATH_DEVIO ;
 int _PATH_DEVPCI ;
 int _PATH_MEM ;
 struct passthru_softc* calloc (int,int) ;
 int cap_rights_clear (int *,int ) ;
 int cap_rights_init (int *,int ,int ,int ) ;
 int cap_rights_set (int *,int ) ;
 int caph_ioctls_limit (scalar_t__,int *,int ) ;
 int caph_rights_limit (scalar_t__,int *) ;
 int cfginit (struct vmctx*,struct pci_devinst*,int,int,int) ;
 int errx (int ,char*) ;
 int free (struct passthru_softc*) ;
 scalar_t__ iofd ;
 scalar_t__ memfd ;
 int nitems (int *) ;
 scalar_t__ open (int ,int ,int ) ;
 scalar_t__ pcifd ;
 int sscanf (char*,char*,int*,int*,int*) ;
 scalar_t__ vm_assign_pptdev (struct vmctx*,int,int,int) ;
 int vm_get_memflags (struct vmctx*) ;
 int vm_unassign_pptdev (struct vmctx*,int,int,int) ;
 int warn (char*,int ) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
passthru_init(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{
 int bus, slot, func, error, memflags;
 struct passthru_softc *sc;

 cap_rights_t rights;
 cap_ioctl_t pci_ioctls[] = { PCIOCREAD, PCIOCWRITE, PCIOCGETBAR };
 cap_ioctl_t io_ioctls[] = { IODEV_PIO };


 sc = ((void*)0);
 error = 1;


 cap_rights_init(&rights, CAP_IOCTL, CAP_READ, CAP_WRITE);


 memflags = vm_get_memflags(ctx);
 if (!(memflags & VM_MEM_F_WIRED)) {
  warnx("passthru requires guest memory to be wired");
  return (error);
 }

 if (pcifd < 0) {
  pcifd = open(_PATH_DEVPCI, O_RDWR, 0);
  if (pcifd < 0) {
   warn("failed to open %s", _PATH_DEVPCI);
   return (error);
  }
 }


 if (caph_rights_limit(pcifd, &rights) == -1)
  errx(EX_OSERR, "Unable to apply rights for sandbox");
 if (caph_ioctls_limit(pcifd, pci_ioctls, nitems(pci_ioctls)) == -1)
  errx(EX_OSERR, "Unable to apply rights for sandbox");


 if (iofd < 0) {
  iofd = open(_PATH_DEVIO, O_RDWR, 0);
  if (iofd < 0) {
   warn("failed to open %s", _PATH_DEVIO);
   return (error);
  }
 }


 if (caph_rights_limit(iofd, &rights) == -1)
  errx(EX_OSERR, "Unable to apply rights for sandbox");
 if (caph_ioctls_limit(iofd, io_ioctls, nitems(io_ioctls)) == -1)
  errx(EX_OSERR, "Unable to apply rights for sandbox");


 if (memfd < 0) {
  memfd = open(_PATH_MEM, O_RDWR, 0);
  if (memfd < 0) {
   warn("failed to open %s", _PATH_MEM);
   return (error);
  }
 }


 cap_rights_clear(&rights, CAP_IOCTL);
 cap_rights_set(&rights, CAP_MMAP_RW);
 if (caph_rights_limit(memfd, &rights) == -1)
  errx(EX_OSERR, "Unable to apply rights for sandbox");


 if (opts == ((void*)0) ||
     sscanf(opts, "%d/%d/%d", &bus, &slot, &func) != 3) {
  warnx("invalid passthru options");
  return (error);
 }

 if (vm_assign_pptdev(ctx, bus, slot, func) != 0) {
  warnx("PCI device at %d/%d/%d is not using the ppt(4) driver",
      bus, slot, func);
  goto done;
 }

 sc = calloc(1, sizeof(struct passthru_softc));

 pi->pi_arg = sc;
 sc->psc_pi = pi;


 error = cfginit(ctx, pi, bus, slot, func);
done:
 if (error) {
  free(sc);
  vm_unassign_pptdev(ctx, bus, slot, func);
 }
 return (error);
}
