#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
struct TYPE_2__ {int wc_en; } ;
struct adapter {scalar_t__ rdmacaps; int /*<<< orphan*/  doorbells; TYPE_1__ iwt; int /*<<< orphan*/  dev; int /*<<< orphan*/ * udbs_res; scalar_t__ udbs_base; int /*<<< orphan*/  udbs_rid; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SGE_STAT_CFG ; 
 scalar_t__ CHELSIO_T5 ; 
 int /*<<< orphan*/  DOORBELL_UDB ; 
 int /*<<< orphan*/  DOORBELL_UDBWC ; 
 int /*<<< orphan*/  DOORBELL_WCWR ; 
 int ENXIO ; 
 int /*<<< orphan*/  PAT_WRITE_COMBINING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC8 (struct adapter*) ; 
 scalar_t__ FUNC9 (struct adapter*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ t5_write_combine ; 

int
FUNC16(struct adapter *sc)
{

	/*
	 * T4: only iWARP driver uses the userspace doorbells.  There is no need
	 * to map it if RDMA is disabled.
	 */
	if (FUNC8(sc) && sc->rdmacaps == 0)
		return (0);

	sc->udbs_rid = FUNC0(2);
	sc->udbs_res = FUNC4(sc->dev, SYS_RES_MEMORY,
	    &sc->udbs_rid, RF_ACTIVE);
	if (sc->udbs_res == NULL) {
		FUNC7(sc->dev, "cannot map doorbell BAR.\n");
		return (ENXIO);
	}
	sc->udbs_base = FUNC13(sc->udbs_res);

	if (FUNC5(sc) >= CHELSIO_T5) {
		FUNC14(&sc->doorbells, DOORBELL_UDB);
#if defined(__i386__) || defined(__amd64__)
		if (t5_write_combine) {
			int rc, mode;

			/*
			 * Enable write combining on BAR2.  This is the
			 * userspace doorbell BAR and is split into 128B
			 * (UDBS_SEG_SIZE) doorbell regions, each associated
			 * with an egress queue.  The first 64B has the doorbell
			 * and the second 64B can be used to submit a tx work
			 * request with an implicit doorbell.
			 */

			rc = FUNC11((vm_offset_t)sc->udbs_base,
			    FUNC12(sc->udbs_res), PAT_WRITE_COMBINING);
			if (rc == 0) {
				FUNC6(&sc->doorbells, DOORBELL_UDB);
				FUNC14(&sc->doorbells, DOORBELL_WCWR);
				FUNC14(&sc->doorbells, DOORBELL_UDBWC);
			} else {
				FUNC7(sc->dev,
				    "couldn't enable write combining: %d\n",
				    rc);
			}

			mode = FUNC9(sc) ? FUNC1(0) : FUNC3(0);
			FUNC15(sc, A_SGE_STAT_CFG,
			    FUNC2(7) | mode);
		}
#endif
	}
	sc->iwt.wc_en = FUNC10(&sc->doorbells, DOORBELL_UDBWC) ? 1 : 0;

	return (0);
}