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
struct vmctx {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * vs_mtx; } ;
struct pci_vtscsi_softc {scalar_t__ vss_ctl_fd; TYPE_1__ vss_vs; int /*<<< orphan*/ * vss_queues; TYPE_2__* vss_vq; int /*<<< orphan*/  vss_mtx; int /*<<< orphan*/  vss_iid; } ;
struct pci_devinst {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  vq_notify; void* vq_qsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  PCIC_STORAGE ; 
 int /*<<< orphan*/  PCIR_CLASS ; 
 int /*<<< orphan*/  PCIR_DEVICE ; 
 int /*<<< orphan*/  PCIR_SUBDEV_0 ; 
 int /*<<< orphan*/  PCIR_SUBVEND_0 ; 
 int /*<<< orphan*/  PCIR_VENDOR ; 
 int /*<<< orphan*/  VIRTIO_DEV_SCSI ; 
 int /*<<< orphan*/  VIRTIO_TYPE_SCSI ; 
 int /*<<< orphan*/  VIRTIO_VENDOR ; 
 int VTSCSI_MAXQ ; 
 void* VTSCSI_RINGSZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct pci_vtscsi_softc* FUNC1 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_vtscsi_softc*) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_vtscsi_controlq_notify ; 
 int /*<<< orphan*/  pci_vtscsi_eventq_notify ; 
 int /*<<< orphan*/  FUNC8 (struct pci_vtscsi_softc*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pci_vtscsi_requestq_notify ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 char* FUNC11 (char**,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ *,struct pci_vtscsi_softc*,struct pci_devinst*,TYPE_2__*) ; 
 int /*<<< orphan*/  vtscsi_vi_consts ; 

__attribute__((used)) static int
FUNC16(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{
	struct pci_vtscsi_softc *sc;
	char *opt, *optname;
	const char *devname;
	int i, optidx = 0;

	sc = FUNC1(1, sizeof(struct pci_vtscsi_softc));
	devname = "/dev/cam/ctl";
	while ((opt = FUNC11(&opts, ",")) != NULL) {
		optname = FUNC11(&opt, "=");
		if (opt == NULL && optidx == 0) {
			if (optname[0] != 0)
				devname = optname;
		} else if (FUNC9(optname, "dev") == 0 && opt != NULL) {
			devname = opt;
		} else if (FUNC9(optname, "iid") == 0 && opt != NULL) {
			sc->vss_iid = FUNC12(opt, NULL, 10);
		} else {
			FUNC3(stderr, "Invalid option %s\n", optname);
			FUNC4(sc);
			return (1);
		}
		optidx++;
	}

	sc->vss_ctl_fd = FUNC5(devname, O_RDWR);
	if (sc->vss_ctl_fd < 0) {
		FUNC0(("cannot open %s: %s\n", devname, FUNC10(errno)));
		FUNC4(sc);
		return (1);
	}

	FUNC15(&sc->vss_vs, &vtscsi_vi_consts, sc, pi, sc->vss_vq);
	sc->vss_vs.vs_mtx = &sc->vss_mtx;

	/* controlq */
	sc->vss_vq[0].vq_qsize = VTSCSI_RINGSZ;
	sc->vss_vq[0].vq_notify = pci_vtscsi_controlq_notify;

	/* eventq */
	sc->vss_vq[1].vq_qsize = VTSCSI_RINGSZ;
	sc->vss_vq[1].vq_notify = pci_vtscsi_eventq_notify;

	/* request queues */
	for (i = 2; i < VTSCSI_MAXQ; i++) {
		sc->vss_vq[i].vq_qsize = VTSCSI_RINGSZ;
		sc->vss_vq[i].vq_notify = pci_vtscsi_requestq_notify;
		FUNC8(sc, &sc->vss_queues[i - 2], i - 2);
	}

	/* initialize config space */
	FUNC6(pi, PCIR_DEVICE, VIRTIO_DEV_SCSI);
	FUNC6(pi, PCIR_VENDOR, VIRTIO_VENDOR);
	FUNC7(pi, PCIR_CLASS, PCIC_STORAGE);
	FUNC6(pi, PCIR_SUBDEV_0, VIRTIO_TYPE_SCSI);
	FUNC6(pi, PCIR_SUBVEND_0, VIRTIO_VENDOR);

	if (FUNC13(&sc->vss_vs, 1, FUNC2()))
		return (1);
	FUNC14(&sc->vss_vs, 0);

	return (0);
}