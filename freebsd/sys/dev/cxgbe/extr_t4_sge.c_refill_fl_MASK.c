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
typedef  int uint16_t ;
struct sw_zone_info {int /*<<< orphan*/  zone; } ;
struct cluster_layout {size_t zidx; uintptr_t hwidx; scalar_t__ region1; } ;
struct sge_fl {int hw_cidx; int sidx; int pidx; int dbidx; int flags; int /*<<< orphan*/ * desc; struct fl_sdesc* sdesc; int /*<<< orphan*/  cl_allocated; struct cluster_layout cll_alt; struct cluster_layout cll_def; int /*<<< orphan*/  cl_recycled; int /*<<< orphan*/  cl_fast_recycled; } ;
struct fl_sdesc {scalar_t__ nmbuf; struct cluster_layout cll; int /*<<< orphan*/ * cl; } ;
struct cluster_metadata {int refcount; struct fl_sdesc* sd; } ;
struct TYPE_2__ {struct sw_zone_info* sw_zone_info; } ;
struct adapter {TYPE_1__ sge; } ;
typedef  int /*<<< orphan*/ * caddr_t ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sge_fl*) ; 
 scalar_t__ FUNC1 (struct sge_fl*) ; 
 int FL_STARVING ; 
 int FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int*,int) ; 
 struct cluster_metadata* FUNC6 (struct adapter*,struct sge_fl*,struct cluster_layout*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  extfree_rels ; 
 int /*<<< orphan*/  FUNC8 (uintptr_t) ; 
 uintptr_t FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,struct sge_fl*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct adapter *sc, struct sge_fl *fl, int n)
{
	__be64 *d;
	struct fl_sdesc *sd;
	uintptr_t pa;
	caddr_t cl;
	struct cluster_layout *cll;
	struct sw_zone_info *swz;
	struct cluster_metadata *clm;
	uint16_t max_pidx;
	uint16_t hw_cidx = fl->hw_cidx;		/* stable snapshot */

	FUNC0(fl);

	/*
	 * We always stop at the beginning of the hardware descriptor that's just
	 * before the one with the hw cidx.  This is to avoid hw pidx = hw cidx,
	 * which would mean an empty freelist to the chip.
	 */
	max_pidx = FUNC4(hw_cidx == 0) ? fl->sidx - 1 : hw_cidx - 1;
	if (fl->pidx == max_pidx * 8)
		return (0);

	d = &fl->desc[fl->pidx];
	sd = &fl->sdesc[fl->pidx];
	cll = &fl->cll_def;	/* default layout */
	swz = &sc->sge.sw_zone_info[cll->zidx];

	while (n > 0) {

		if (sd->cl != NULL) {

			if (sd->nmbuf == 0) {
				/*
				 * Fast recycle without involving any atomics on
				 * the cluster's metadata (if the cluster has
				 * metadata).  This happens when all frames
				 * received in the cluster were small enough to
				 * fit within a single mbuf each.
				 */
				fl->cl_fast_recycled++;
#ifdef INVARIANTS
				clm = cl_metadata(sc, fl, &sd->cll, sd->cl);
				if (clm != NULL)
					MPASS(clm->refcount == 1);
#endif
				goto recycled_fast;
			}

			/*
			 * Cluster is guaranteed to have metadata.  Clusters
			 * without metadata always take the fast recycle path
			 * when they're recycled.
			 */
			clm = FUNC6(sc, fl, &sd->cll, sd->cl);
			FUNC3(clm != NULL);

			if (FUNC5(&clm->refcount, -1) == 1) {
				fl->cl_recycled++;
				FUNC7(extfree_rels, 1);
				goto recycled;
			}
			sd->cl = NULL;	/* gave up my reference */
		}
		FUNC3(sd->cl == NULL);
alloc:
		cl = FUNC11(swz->zone, M_NOWAIT);
		if (FUNC4(cl == NULL)) {
			if (cll == &fl->cll_alt || fl->cll_alt.zidx == -1 ||
			    fl->cll_def.zidx == fl->cll_alt.zidx)
				break;

			/* fall back to the safe zone */
			cll = &fl->cll_alt;
			swz = &sc->sge.sw_zone_info[cll->zidx];
			goto alloc;
		}
		fl->cl_allocated++;
		n--;

		pa = FUNC9((vm_offset_t)cl);
		pa += cll->region1;
		sd->cl = cl;
		sd->cll = *cll;
		*d = FUNC8(pa | cll->hwidx);
		clm = FUNC6(sc, fl, cll, cl);
		if (clm != NULL) {
recycled:
#ifdef INVARIANTS
			clm->sd = sd;
#endif
			clm->refcount = 1;
		}
		sd->nmbuf = 0;
recycled_fast:
		d++;
		sd++;
		if (FUNC4(++fl->pidx % 8 == 0)) {
			uint16_t pidx = fl->pidx / 8;

			if (FUNC4(pidx == fl->sidx)) {
				fl->pidx = 0;
				pidx = 0;
				sd = fl->sdesc;
				d = fl->desc;
			}
			if (pidx == max_pidx)
				break;

			if (FUNC2(pidx, fl->dbidx, fl->sidx) >= 4)
				FUNC10(sc, fl);
		}
	}

	if (fl->pidx / 8 != fl->dbidx)
		FUNC10(sc, fl);

	return (FUNC1(fl) && !(fl->flags & FL_STARVING));
}