#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct tx_cl_rl_params {int refcount; int flags; scalar_t__ ratemode; scalar_t__ rateunit; scalar_t__ mode; scalar_t__ maxrate; int pktsize; int burstsize; } ;
struct port_info {TYPE_5__* sched_params; TYPE_3__* vi; } ;
struct TYPE_6__ {int nports; } ;
struct adapter {int /*<<< orphan*/  tc_lock; TYPE_4__* chip_params; struct port_info** port; TYPE_1__ params; } ;
struct TYPE_10__ {int pktsize; int burstsize; struct tx_cl_rl_params* cl_rl; } ;
struct TYPE_9__ {int nsched_cls; } ;
struct TYPE_8__ {TYPE_2__* ifp; } ;
struct TYPE_7__ {int if_mtu; } ;

/* Variables and functions */
 int CLRL_ASYNC ; 
 int CLRL_ERR ; 
 int CLRL_SYNC ; 
 int CLRL_USER ; 
 int ENOSPC ; 
 scalar_t__ FW_SCHED_PARAMS_MODE_FLOW ; 
 scalar_t__ FW_SCHED_PARAMS_RATE_ABS ; 
 scalar_t__ FW_SCHED_PARAMS_UNIT_BITRATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 

int
FUNC4(struct adapter *sc, int port_id, u_int maxrate,
    int *tc_idx)
{
	int rc = 0, fa = -1, i, pktsize, burstsize;
	bool update;
	struct tx_cl_rl_params *tc;
	struct port_info *pi;

	FUNC0(port_id >= 0 && port_id < sc->params.nports);

	pi = sc->port[port_id];
	if (pi->sched_params->pktsize > 0)
		pktsize = pi->sched_params->pktsize;
	else
		pktsize = pi->vi[0].ifp->if_mtu;
	if (pi->sched_params->burstsize > 0)
		burstsize = pi->sched_params->burstsize;
	else
		burstsize = pktsize * 4;
	tc = &pi->sched_params->cl_rl[0];

	update = false;
	FUNC1(&sc->tc_lock);
	for (i = 0; i < sc->chip_params->nsched_cls; i++, tc++) {
		if (fa < 0 && tc->refcount == 0 && !(tc->flags & CLRL_USER))
			fa = i;		/* first available */

		if (tc->ratemode == FW_SCHED_PARAMS_RATE_ABS &&
		    tc->rateunit == FW_SCHED_PARAMS_UNIT_BITRATE &&
		    tc->mode == FW_SCHED_PARAMS_MODE_FLOW &&
		    tc->maxrate == maxrate && tc->pktsize == pktsize &&
		    tc->burstsize == burstsize) {
			tc->refcount++;
			*tc_idx = i;
			if ((tc->flags & (CLRL_ERR | CLRL_ASYNC | CLRL_SYNC)) ==
			    CLRL_ERR) {
				update = true;
			}
			goto done;
		}
	}
	/* Not found */
	FUNC0(i == sc->chip_params->nsched_cls);
	if (fa != -1) {
		tc = &pi->sched_params->cl_rl[fa];
		tc->refcount = 1;
		tc->ratemode = FW_SCHED_PARAMS_RATE_ABS;
		tc->rateunit = FW_SCHED_PARAMS_UNIT_BITRATE;
		tc->mode = FW_SCHED_PARAMS_MODE_FLOW;
		tc->maxrate = maxrate;
		tc->pktsize = pktsize;
		tc->burstsize = burstsize;
		*tc_idx = fa;
		update = true;
	} else {
		*tc_idx = -1;
		rc = ENOSPC;
	}
done:
	FUNC2(&sc->tc_lock);
	if (update) {
		tc->flags |= CLRL_ASYNC;
		FUNC3(sc);
	}
	return (rc);
}