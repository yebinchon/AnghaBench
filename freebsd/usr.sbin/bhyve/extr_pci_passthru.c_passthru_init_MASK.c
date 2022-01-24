#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vmctx {int dummy; } ;
struct pci_devinst {struct passthru_softc* pi_arg; } ;
struct passthru_softc {struct pci_devinst* psc_pi; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;
typedef  int /*<<< orphan*/  cap_ioctl_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_IOCTL ; 
 int /*<<< orphan*/  CAP_MMAP_RW ; 
 int /*<<< orphan*/  CAP_READ ; 
 int /*<<< orphan*/  CAP_WRITE ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  IODEV_PIO ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  PCIOCGETBAR ; 
 int /*<<< orphan*/  PCIOCREAD ; 
 int /*<<< orphan*/  PCIOCWRITE ; 
 int VM_MEM_F_WIRED ; 
 int /*<<< orphan*/  _PATH_DEVIO ; 
 int /*<<< orphan*/  _PATH_DEVPCI ; 
 int /*<<< orphan*/  _PATH_MEM ; 
 struct passthru_softc* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct vmctx*,struct pci_devinst*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct passthru_softc*) ; 
 scalar_t__ iofd ; 
 scalar_t__ memfd ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pcifd ; 
 int FUNC11 (char*,char*,int*,int*,int*) ; 
 scalar_t__ FUNC12 (struct vmctx*,int,int,int) ; 
 int FUNC13 (struct vmctx*) ; 
 int /*<<< orphan*/  FUNC14 (struct vmctx*,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 

__attribute__((used)) static int
FUNC17(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{
	int bus, slot, func, error, memflags;
	struct passthru_softc *sc;
#ifndef WITHOUT_CAPSICUM
	cap_rights_t rights;
	cap_ioctl_t pci_ioctls[] = { PCIOCREAD, PCIOCWRITE, PCIOCGETBAR };
	cap_ioctl_t io_ioctls[] = { IODEV_PIO };
#endif

	sc = NULL;
	error = 1;

#ifndef WITHOUT_CAPSICUM
	FUNC2(&rights, CAP_IOCTL, CAP_READ, CAP_WRITE);
#endif

	memflags = FUNC13(ctx);
	if (!(memflags & VM_MEM_F_WIRED)) {
		FUNC16("passthru requires guest memory to be wired");
		return (error);
	}

	if (pcifd < 0) {
		pcifd = FUNC10(_PATH_DEVPCI, O_RDWR, 0);
		if (pcifd < 0) {
			FUNC15("failed to open %s", _PATH_DEVPCI);
			return (error);
		}
	}

#ifndef WITHOUT_CAPSICUM
	if (FUNC5(pcifd, &rights) == -1)
		FUNC7(EX_OSERR, "Unable to apply rights for sandbox");
	if (FUNC4(pcifd, pci_ioctls, FUNC9(pci_ioctls)) == -1)
		FUNC7(EX_OSERR, "Unable to apply rights for sandbox");
#endif

	if (iofd < 0) {
		iofd = FUNC10(_PATH_DEVIO, O_RDWR, 0);
		if (iofd < 0) {
			FUNC15("failed to open %s", _PATH_DEVIO);
			return (error);
		}
	}

#ifndef WITHOUT_CAPSICUM
	if (FUNC5(iofd, &rights) == -1)
		FUNC7(EX_OSERR, "Unable to apply rights for sandbox");
	if (FUNC4(iofd, io_ioctls, FUNC9(io_ioctls)) == -1)
		FUNC7(EX_OSERR, "Unable to apply rights for sandbox");
#endif

	if (memfd < 0) {
		memfd = FUNC10(_PATH_MEM, O_RDWR, 0);
		if (memfd < 0) {
			FUNC15("failed to open %s", _PATH_MEM);
			return (error);
		}
	}

#ifndef WITHOUT_CAPSICUM
	FUNC1(&rights, CAP_IOCTL);
	FUNC3(&rights, CAP_MMAP_RW);
	if (FUNC5(memfd, &rights) == -1)
		FUNC7(EX_OSERR, "Unable to apply rights for sandbox");
#endif

	if (opts == NULL ||
	    FUNC11(opts, "%d/%d/%d", &bus, &slot, &func) != 3) {
		FUNC16("invalid passthru options");
		return (error);
	}

	if (FUNC12(ctx, bus, slot, func) != 0) {
		FUNC16("PCI device at %d/%d/%d is not using the ppt(4) driver",
		    bus, slot, func);
		goto done;
	}

	sc = FUNC0(1, sizeof(struct passthru_softc));

	pi->pi_arg = sc;
	sc->psc_pi = pi;

	/* initialize config space */
	error = FUNC6(ctx, pi, bus, slot, func);
done:
	if (error) {
		FUNC8(sc);
		FUNC14(ctx, bus, slot, func);
	}
	return (error);
}