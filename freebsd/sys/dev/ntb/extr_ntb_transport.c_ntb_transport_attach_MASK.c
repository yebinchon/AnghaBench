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
typedef  char* uintmax_t ;
typedef  int uint64_t ;
struct ntb_transport_mw {scalar_t__ phys_size; scalar_t__ tx_size; scalar_t__ buff_size; scalar_t__ dma_addr; int /*<<< orphan*/ * virt_addr; scalar_t__ rx_size; int /*<<< orphan*/  addr_limit; int /*<<< orphan*/  xlat_align_size; int /*<<< orphan*/  xlat_align; int /*<<< orphan*/  vbase; int /*<<< orphan*/  phys_addr; } ;
struct ntb_transport_ctx {int mw_count; int compact; int qp_count; int link_is_up; struct ntb_transport_mw* mw_vec; struct ntb_transport_mw* qp_vec; int /*<<< orphan*/  link_watchdog; int /*<<< orphan*/  dev; int /*<<< orphan*/  link_cleanup; int /*<<< orphan*/  link_work; struct ntb_transport_child* child; } ;
struct ntb_transport_child {int consumer; int qpoff; int qpcnt; struct ntb_transport_child* next; int /*<<< orphan*/ * dev; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cfg ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NTB_T ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  NTB_SPEED_AUTO ; 
 int /*<<< orphan*/  NTB_WIDTH_AUTO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ntb_transport_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 scalar_t__ UINT32_MAX ; 
 int /*<<< orphan*/  VM_MEMATTR_WRITE_COMBINING ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ntb_transport_ctx*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 struct ntb_transport_ctx* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct ntb_transport_child*) ; 
 scalar_t__ enable_xeon_watchdog ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct ntb_transport_mw*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int,int) ; 
 void* FUNC16 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ max_mw_size ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int FUNC22 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC24 (int /*<<< orphan*/ ,struct ntb_transport_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct ntb_transport_ctx*,int,scalar_t__) ; 
 int FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct ntb_transport_ctx*,int) ; 
 int /*<<< orphan*/  ntb_transport_link_cleanup_work ; 
 int /*<<< orphan*/  ntb_transport_ops ; 
 int /*<<< orphan*/  FUNC28 (char*,...) ; 
 int /*<<< orphan*/  FUNC29 (char*,int,char*,char*,int) ; 
 char* FUNC30 (char**,char*) ; 
 int FUNC31 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  xeon_link_watchdog_hb ; 

__attribute__((used)) static int
FUNC32(device_t dev)
{
	struct ntb_transport_ctx *nt = FUNC9(dev);
	struct ntb_transport_child **cpp = &nt->child;
	struct ntb_transport_child *nc;
	struct ntb_transport_mw *mw;
	uint64_t db_bitmap;
	int rc, i, db_count, spad_count, qp, qpu, qpo, qpt;
	char cfg[128] = "";
	char buf[32];
	char *n, *np, *c, *name;

	nt->dev = dev;
	nt->mw_count = FUNC19(dev);
	spad_count = FUNC26(dev);
	db_bitmap = FUNC17(dev);
	db_count = FUNC13(db_bitmap);
	FUNC0(db_bitmap == (1 << db_count) - 1,
	    ("Doorbells are not sequential (%jx).\n", db_bitmap));

	if (nt->mw_count == 0) {
		FUNC11(dev, "At least 1 memory window required.\n");
		return (ENXIO);
	}
	nt->compact = (spad_count < 4 + 2 * nt->mw_count);
	FUNC29(buf, sizeof(buf), "hint.%s.%d.compact", FUNC8(dev),
	    FUNC10(dev));
	FUNC2(buf, &nt->compact);
	if (nt->compact) {
		if (spad_count < 3) {
			FUNC11(dev, "At least 3 scratchpads required.\n");
			return (ENXIO);
		}
		if (spad_count < 2 + nt->mw_count) {
			nt->mw_count = spad_count - 2;
			FUNC11(dev, "Scratchpads enough only for %d "
			    "memory windows.\n", nt->mw_count);
		}
	} else {
		if (spad_count < 6) {
			FUNC11(dev, "At least 6 scratchpads required.\n");
			return (ENXIO);
		}
		if (spad_count < 4 + 2 * nt->mw_count) {
			nt->mw_count = (spad_count - 4) / 2;
			FUNC11(dev, "Scratchpads enough only for %d "
			    "memory windows.\n", nt->mw_count);
		}
	}
	if (db_bitmap == 0) {
		FUNC11(dev, "At least one doorbell required.\n");
		return (ENXIO);
	}

	nt->mw_vec = FUNC16(nt->mw_count * sizeof(*nt->mw_vec), M_NTB_T,
	    M_WAITOK | M_ZERO);
	for (i = 0; i < nt->mw_count; i++) {
		mw = &nt->mw_vec[i];

		rc = FUNC20(dev, i, &mw->phys_addr, &mw->vbase,
		    &mw->phys_size, &mw->xlat_align, &mw->xlat_align_size,
		    &mw->addr_limit);
		if (rc != 0)
			goto err;

		mw->tx_size = mw->phys_size;
		if (max_mw_size != 0 && mw->tx_size > max_mw_size) {
			FUNC11(dev, "Memory window %d limited from "
			    "%ju to %ju\n", i, (uintmax_t)mw->tx_size,
			    max_mw_size);
			mw->tx_size = max_mw_size;
		}
		if (nt->compact && mw->tx_size > UINT32_MAX) {
			FUNC11(dev, "Memory window %d is too big "
			    "(%ju)\n", i, (uintmax_t)mw->tx_size);
			rc = ENXIO;
			goto err;
		}

		mw->rx_size = 0;
		mw->buff_size = 0;
		mw->virt_addr = NULL;
		mw->dma_addr = 0;

		rc = FUNC22(dev, i, VM_MEMATTR_WRITE_COMBINING);
		if (rc)
			FUNC23(0, "Unable to set mw%d caching\n", i);

		/*
		 * Try to preallocate receive memory early, since there may
		 * be not enough contiguous memory later.  It is quite likely
		 * that NTB windows are symmetric and this allocation remain,
		 * but even if not, we will just reallocate it later.
		 */
		FUNC25(nt, i, mw->tx_size);
	}

	qpu = 0;
	qpo = FUNC15(db_count, nt->mw_count);
	qpt = db_count;

	FUNC29(buf, sizeof(buf), "hint.%s.%d.config", FUNC8(dev),
	    FUNC10(dev));
	FUNC3(buf, cfg, sizeof(cfg));
	n = cfg;
	i = 0;
	while ((c = FUNC30(&n, ",")) != NULL) {
		np = c;
		name = FUNC30(&np, ":");
		if (name != NULL && name[0] == 0)
			name = NULL;
		qp = (np && np[0] != 0) ? FUNC31(np, NULL, 10) : qpo - qpu;
		if (qp <= 0)
			qp = 1;

		if (qp > qpt - qpu) {
			FUNC11(dev, "Not enough resources for config\n");
			break;
		}

		nc = FUNC16(sizeof(*nc), M_DEVBUF, M_WAITOK | M_ZERO);
		nc->consumer = i;
		nc->qpoff = qpu;
		nc->qpcnt = qp;
		nc->dev = FUNC7(dev, name, -1);
		if (nc->dev == NULL) {
			FUNC11(dev, "Can not add child.\n");
			break;
		}
		FUNC12(nc->dev, nc);
		*cpp = nc;
		cpp = &nc->next;

		if (bootverbose) {
			FUNC11(dev, "%d \"%s\": queues %d",
			    i, name, qpu);
			if (qp > 1)
				FUNC28("-%d", qpu + qp - 1);
			FUNC28("\n");
		}

		qpu += qp;
		i++;
	}
	nt->qp_count = qpu;

	nt->qp_vec = FUNC16(nt->qp_count * sizeof(*nt->qp_vec), M_NTB_T,
	    M_WAITOK | M_ZERO);

	for (i = 0; i < nt->qp_count; i++)
		FUNC27(nt, i);

	FUNC5(&nt->link_work, 0);
	FUNC5(&nt->link_watchdog, 0);
	FUNC1(&nt->link_cleanup, 0, ntb_transport_link_cleanup_work, nt);
	nt->link_is_up = false;

	rc = FUNC24(dev, nt, &ntb_transport_ops);
	if (rc != 0)
		goto err;

	FUNC18(dev, NTB_SPEED_AUTO, NTB_WIDTH_AUTO);

	for (i = 0; i < nt->mw_count; i++) {
		mw = &nt->mw_vec[i];
		rc = FUNC21(nt->dev, i, mw->dma_addr, mw->buff_size);
		if (rc != 0)
			FUNC23(0, "load time mw%d xlat fails, rc %d\n", i, rc);
	}

	if (enable_xeon_watchdog != 0)
		FUNC6(&nt->link_watchdog, 0, xeon_link_watchdog_hb, nt);

	FUNC4(dev);
	return (0);

err:
	FUNC14(nt->qp_vec, M_NTB_T);
	FUNC14(nt->mw_vec, M_NTB_T);
	return (rc);
}