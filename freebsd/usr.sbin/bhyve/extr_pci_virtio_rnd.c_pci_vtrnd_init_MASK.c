#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v ;
typedef  int /*<<< orphan*/  uint8_t ;
struct vmctx {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * vs_mtx; } ;
struct TYPE_6__ {int /*<<< orphan*/  vq_qsize; } ;
struct pci_vtrnd_softc {int vrsc_fd; TYPE_1__ vrsc_vs; TYPE_2__ vrsc_vq; int /*<<< orphan*/  vrsc_mtx; } ;
struct pci_devinst {int dummy; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_READ ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  PCIC_CRYPTO ; 
 int /*<<< orphan*/  PCIR_CLASS ; 
 int /*<<< orphan*/  PCIR_DEVICE ; 
 int /*<<< orphan*/  PCIR_SUBDEV_0 ; 
 int /*<<< orphan*/  PCIR_SUBVEND_0 ; 
 int /*<<< orphan*/  PCIR_VENDOR ; 
 int /*<<< orphan*/  VIRTIO_DEV_RANDOM ; 
 int /*<<< orphan*/  VIRTIO_TYPE_ENTROPY ; 
 int /*<<< orphan*/  VIRTIO_VENDOR ; 
 int /*<<< orphan*/  VTRND_RINGSZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct pci_vtrnd_softc* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,struct pci_vtrnd_softc*,struct pci_devinst*,TYPE_2__*) ; 
 int /*<<< orphan*/  vtrnd_vi_consts ; 

__attribute__((used)) static int
FUNC15(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{
	struct pci_vtrnd_softc *sc;
	int fd;
	int len;
	uint8_t v;
#ifndef WITHOUT_CAPSICUM
	cap_rights_t rights;
#endif

	/*
	 * Should always be able to open /dev/random.
	 */
	fd = FUNC8("/dev/random", O_RDONLY | O_NONBLOCK);

	FUNC1(fd >= 0);

#ifndef WITHOUT_CAPSICUM
	FUNC3(&rights, CAP_READ);
	if (FUNC4(fd, &rights) == -1)
		FUNC6(EX_OSERR, "Unable to apply rights for sandbox");
#endif

	/*
	 * Check that device is seeded and non-blocking.
	 */
	len = FUNC11(fd, &v, sizeof(v));
	if (len <= 0) {
		FUNC0(("vtrnd: /dev/random not ready, read(): %d", len));
		FUNC5(fd);
		return (1);
	}

	sc = FUNC2(1, sizeof(struct pci_vtrnd_softc));

	FUNC14(&sc->vrsc_vs, &vtrnd_vi_consts, sc, pi, &sc->vrsc_vq);
	sc->vrsc_vs.vs_mtx = &sc->vrsc_mtx;

	sc->vrsc_vq.vq_qsize = VTRND_RINGSZ;

	/* keep /dev/random opened while emulating */
	sc->vrsc_fd = fd;

	/* initialize config space */
	FUNC9(pi, PCIR_DEVICE, VIRTIO_DEV_RANDOM);
	FUNC9(pi, PCIR_VENDOR, VIRTIO_VENDOR);
	FUNC10(pi, PCIR_CLASS, PCIC_CRYPTO);
	FUNC9(pi, PCIR_SUBDEV_0, VIRTIO_TYPE_ENTROPY);
	FUNC9(pi, PCIR_SUBVEND_0, VIRTIO_VENDOR);

	if (FUNC12(&sc->vrsc_vs, 1, FUNC7()))
		return (1);
	FUNC13(&sc->vrsc_vs, 0);

	return (0);
}