#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tx_cl_rl_params {scalar_t__ refcount; } ;
struct TYPE_8__ {int nports; } ;
struct adapter {int /*<<< orphan*/  tc_lock; TYPE_3__** port; TYPE_1__* chip_params; TYPE_4__ params; } ;
struct TYPE_7__ {TYPE_2__* sched_params; } ;
struct TYPE_6__ {struct tx_cl_rl_params* cl_rl; } ;
struct TYPE_5__ {int nsched_cls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct adapter *sc, int port_id, int tc_idx)
{
	struct tx_cl_rl_params *tc;

	FUNC0(port_id >= 0 && port_id < sc->params.nports);
	FUNC0(tc_idx >= 0 && tc_idx < sc->chip_params->nsched_cls);

	FUNC1(&sc->tc_lock);
	tc = &sc->port[port_id]->sched_params->cl_rl[tc_idx];
	FUNC0(tc->refcount > 0);
	tc->refcount--;
	FUNC2(&sc->tc_lock);
}