#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sge_fl {int sidx; struct fl_sdesc* sdesc; } ;
struct cluster_layout {size_t zidx; } ;
struct fl_sdesc {scalar_t__ nmbuf; int /*<<< orphan*/ * cl; struct cluster_layout cll; } ;
struct cluster_metadata {int /*<<< orphan*/  refcount; } ;
struct TYPE_4__ {TYPE_1__* sw_zone_info; } ;
struct adapter {TYPE_2__ sge; } ;
struct TYPE_3__ {int /*<<< orphan*/  zone; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_CXGBE ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct cluster_metadata* FUNC1 (struct adapter*,struct sge_fl*,struct cluster_layout*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  extfree_rels ; 
 int /*<<< orphan*/  FUNC3 (struct fl_sdesc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct adapter *sc, struct sge_fl *fl)
{
	struct fl_sdesc *sd;
	struct cluster_metadata *clm;
	struct cluster_layout *cll;
	int i;

	sd = fl->sdesc;
	for (i = 0; i < fl->sidx * 8; i++, sd++) {
		if (sd->cl == NULL)
			continue;

		cll = &sd->cll;
		clm = FUNC1(sc, fl, cll, sd->cl);
		if (sd->nmbuf == 0)
			FUNC4(sc->sge.sw_zone_info[cll->zidx].zone, sd->cl);
		else if (clm && FUNC0(&clm->refcount, -1) == 1) {
			FUNC4(sc->sge.sw_zone_info[cll->zidx].zone, sd->cl);
			FUNC2(extfree_rels, 1);
		}
		sd->cl = NULL;
	}

	FUNC3(fl->sdesc, M_CXGBE);
	fl->sdesc = NULL;
}