#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* iflib_rxq_t ;
typedef  TYPE_3__* iflib_fl_t ;
struct TYPE_9__ {TYPE_3__* ifsd_map; TYPE_3__* ifsd_ba; TYPE_3__* ifsd_cl; TYPE_3__* ifsd_m; } ;
struct TYPE_11__ {int ifl_size; TYPE_1__ ifl_sds; int /*<<< orphan*/ * ifl_buf_tag; } ;
struct TYPE_10__ {int ifr_nfl; scalar_t__ ifr_cq_cidx; TYPE_3__* ifr_ifdi; TYPE_3__* ifr_fl; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  M_IFLIB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(iflib_rxq_t rxq)
{
	iflib_fl_t fl;
	int i, j;

	if (rxq->ifr_fl != NULL) {
		for (i = 0; i < rxq->ifr_nfl; i++) {
			fl = &rxq->ifr_fl[i];
			if (fl->ifl_buf_tag != NULL) {
				if (fl->ifl_sds.ifsd_map != NULL) {
					for (j = 0; j < fl->ifl_size; j++) {
						FUNC2(
						    fl->ifl_buf_tag,
						    fl->ifl_sds.ifsd_map[j],
						    BUS_DMASYNC_POSTREAD);
						FUNC3(
						    fl->ifl_buf_tag,
						    fl->ifl_sds.ifsd_map[j]);
						FUNC1(
						    fl->ifl_buf_tag,
						    fl->ifl_sds.ifsd_map[j]);
					}
				}
				FUNC0(fl->ifl_buf_tag);
				fl->ifl_buf_tag = NULL;
			}
			FUNC4(fl->ifl_sds.ifsd_m, M_IFLIB);
			FUNC4(fl->ifl_sds.ifsd_cl, M_IFLIB);
			FUNC4(fl->ifl_sds.ifsd_ba, M_IFLIB);
			FUNC4(fl->ifl_sds.ifsd_map, M_IFLIB);
			fl->ifl_sds.ifsd_m = NULL;
			fl->ifl_sds.ifsd_cl = NULL;
			fl->ifl_sds.ifsd_ba = NULL;
			fl->ifl_sds.ifsd_map = NULL;
		}
		FUNC4(rxq->ifr_fl, M_IFLIB);
		rxq->ifr_fl = NULL;
		FUNC4(rxq->ifr_ifdi, M_IFLIB);
		rxq->ifr_ifdi = NULL;
		rxq->ifr_cq_cidx = 0;
	}
}