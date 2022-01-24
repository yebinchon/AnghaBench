#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct vmctx {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/ * vs_mtx; } ;
struct TYPE_11__ {int alignment_offset; scalar_t__ opt_io_size; scalar_t__ min_io_size; scalar_t__ physical_block_exp; } ;
struct TYPE_10__ {scalar_t__ sectors; scalar_t__ heads; scalar_t__ cylinders; } ;
struct TYPE_12__ {int vbc_capacity; int vbc_blk_size; scalar_t__ vbc_writeback; TYPE_3__ vbc_topology; TYPE_2__ vbc_geometry; int /*<<< orphan*/  vbc_seg_max; scalar_t__ vbc_size_max; } ;
struct TYPE_14__ {int vq_qsize; } ;
struct pci_vtblk_softc {TYPE_5__ vbsc_vs; struct blockif_ctxt* bc; TYPE_4__ vbsc_cfg; int /*<<< orphan*/  vbsc_ident; TYPE_6__ vbsc_vq; int /*<<< orphan*/  vsc_mtx; struct pci_vtblk_ioreq* vbsc_ios; } ;
struct TYPE_9__ {struct pci_vtblk_ioreq* br_param; int /*<<< orphan*/  br_callback; } ;
struct pci_vtblk_ioreq {int io_idx; struct pci_vtblk_softc* io_sc; TYPE_1__ io_req; } ;
struct pci_devinst {int pi_slot; int pi_func; } ;
struct blockif_ctxt {int dummy; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  bident ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCKIF_IOV_MAX ; 
 int DEV_BSIZE ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCIC_STORAGE ; 
 int /*<<< orphan*/  PCIR_CLASS ; 
 int /*<<< orphan*/  PCIR_DEVICE ; 
 int /*<<< orphan*/  PCIR_SUBDEV_0 ; 
 int /*<<< orphan*/  PCIR_SUBVEND_0 ; 
 int /*<<< orphan*/  PCIR_VENDOR ; 
 int /*<<< orphan*/  VIRTIO_DEV_BLOCK ; 
 int /*<<< orphan*/  VIRTIO_TYPE_BLOCK ; 
 int /*<<< orphan*/  VIRTIO_VENDOR ; 
 int /*<<< orphan*/  VTBLK_BLK_ID_BYTES ; 
 int VTBLK_RINGSZ ; 
 int /*<<< orphan*/  FUNC4 (struct blockif_ctxt*) ; 
 struct blockif_ctxt* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct blockif_ctxt*,int*,int*) ; 
 int FUNC7 (struct blockif_ctxt*) ; 
 int FUNC8 (struct blockif_ctxt*) ; 
 struct pci_vtblk_softc* FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_vtblk_done ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 scalar_t__ FUNC20 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_5__*,int /*<<< orphan*/ *,struct pci_vtblk_softc*,struct pci_devinst*,TYPE_6__*) ; 
 int /*<<< orphan*/  vtblk_vi_consts ; 

__attribute__((used)) static int
FUNC23(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{
	char bident[sizeof("XX:X:X")];
	struct blockif_ctxt *bctxt;
	MD5_CTX mdctx;
	u_char digest[16];
	struct pci_vtblk_softc *sc;
	off_t size;
	int i, sectsz, sts, sto;

	if (opts == NULL) {
		FUNC16("virtio-block: backing device required\n");
		return (1);
	}

	/*
	 * The supplied backing file has to exist
	 */
	FUNC18(bident, sizeof(bident), "%d:%d", pi->pi_slot, pi->pi_func);
	bctxt = FUNC5(opts, bident);
	if (bctxt == NULL) {
		FUNC15("Could not open backing file");
		return (1);
	}

	size = FUNC8(bctxt);
	sectsz = FUNC7(bctxt);
	FUNC6(bctxt, &sts, &sto);

	sc = FUNC9(1, sizeof(struct pci_vtblk_softc));
	sc->bc = bctxt;
	for (i = 0; i < VTBLK_RINGSZ; i++) {
		struct pci_vtblk_ioreq *io = &sc->vbsc_ios[i];
		io->io_req.br_callback = pci_vtblk_done;
		io->io_req.br_param = io;
		io->io_sc = sc;
		io->io_idx = i;
	}

	FUNC17(&sc->vsc_mtx, NULL);

	/* init virtio softc and virtqueues */
	FUNC22(&sc->vbsc_vs, &vtblk_vi_consts, sc, pi, &sc->vbsc_vq);
	sc->vbsc_vs.vs_mtx = &sc->vsc_mtx;

	sc->vbsc_vq.vq_qsize = VTBLK_RINGSZ;
	/* sc->vbsc_vq.vq_notify = we have no per-queue notify */

	/*
	 * Create an identifier for the backing file. Use parts of the
	 * md5 sum of the filename
	 */
	FUNC1(&mdctx);
	FUNC2(&mdctx, opts, FUNC19(opts));
	FUNC0(digest, &mdctx);
	FUNC18(sc->vbsc_ident, VTBLK_BLK_ID_BYTES,
	    "BHYVE-%02X%02X-%02X%02X-%02X%02X",
	    digest[0], digest[1], digest[2], digest[3], digest[4], digest[5]);

	/* setup virtio block config space */
	sc->vbsc_cfg.vbc_capacity = size / DEV_BSIZE; /* 512-byte units */
	sc->vbsc_cfg.vbc_size_max = 0;	/* not negotiated */

	/*
	 * If Linux is presented with a seg_max greater than the virtio queue
	 * size, it can stumble into situations where it violates its own
	 * invariants and panics.  For safety, we keep seg_max clamped, paying
	 * heed to the two extra descriptors needed for the header and status
	 * of a request.
	 */
	sc->vbsc_cfg.vbc_seg_max = FUNC3(VTBLK_RINGSZ - 2, BLOCKIF_IOV_MAX);
	sc->vbsc_cfg.vbc_geometry.cylinders = 0;	/* no geometry */
	sc->vbsc_cfg.vbc_geometry.heads = 0;
	sc->vbsc_cfg.vbc_geometry.sectors = 0;
	sc->vbsc_cfg.vbc_blk_size = sectsz;
	sc->vbsc_cfg.vbc_topology.physical_block_exp =
	    (sts > sectsz) ? (FUNC11(sts / sectsz) - 1) : 0;
	sc->vbsc_cfg.vbc_topology.alignment_offset =
	    (sto != 0) ? ((sts - sto) / sectsz) : 0;
	sc->vbsc_cfg.vbc_topology.min_io_size = 0;
	sc->vbsc_cfg.vbc_topology.opt_io_size = 0;
	sc->vbsc_cfg.vbc_writeback = 0;

	/*
	 * Should we move some of this into virtio.c?  Could
	 * have the device, class, and subdev_0 as fields in
	 * the virtio constants structure.
	 */
	FUNC13(pi, PCIR_DEVICE, VIRTIO_DEV_BLOCK);
	FUNC13(pi, PCIR_VENDOR, VIRTIO_VENDOR);
	FUNC14(pi, PCIR_CLASS, PCIC_STORAGE);
	FUNC13(pi, PCIR_SUBDEV_0, VIRTIO_TYPE_BLOCK);
	FUNC13(pi, PCIR_SUBVEND_0, VIRTIO_VENDOR);

	if (FUNC20(&sc->vbsc_vs, 1, FUNC10())) {
		FUNC4(sc->bc);
		FUNC12(sc);
		return (1);
	}
	FUNC21(&sc->vbsc_vs, 0);
	return (0);
}