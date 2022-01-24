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
typedef  int uint32_t ;
struct tx_cl_rl_params {int flags; scalar_t__ refcount; } ;
struct TYPE_7__ {int flags; size_t tx_chan; int /*<<< orphan*/  cntxt_id; } ;
struct sge_txq {int tc_idx; TYPE_3__ eq; } ;
struct adapter {int /*<<< orphan*/  tc_lock; TYPE_4__* chip_params; int /*<<< orphan*/  pf; int /*<<< orphan*/  mbox; TYPE_2__** port; } ;
struct TYPE_8__ {int nsched_cls; } ;
struct TYPE_6__ {TYPE_1__* sched_params; } ;
struct TYPE_5__ {struct tx_cl_rl_params* cl_rl; } ;

/* Variables and functions */
 int CLRL_ERR ; 
 int EAGAIN ; 
 int EBUSY ; 
 int ENXIO ; 
 int EQ_ALLOCATED ; 
 int /*<<< orphan*/  FW_PARAMS_MNEM_DMAQ ; 
 int /*<<< orphan*/  FW_PARAMS_PARAM_DMAQ_EQ_SCHEDCLASS_ETH ; 
 int INTR_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SLEEP_OK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int*) ; 

__attribute__((used)) static int
FUNC9(struct adapter *sc, struct sge_txq *txq, int idx)
{
	struct tx_cl_rl_params *tc0, *tc;
	int rc, old_idx;
	uint32_t fw_mnem, fw_class;

	if (!(txq->eq.flags & EQ_ALLOCATED))
		return (EAGAIN);

	FUNC6(&sc->tc_lock);
	if (txq->tc_idx == -2) {
		rc = EBUSY;	/* Another bind/unbind in progress already. */
		goto done;
	}
	if (idx == txq->tc_idx) {
		rc = 0;		/* No change, nothing to do. */
		goto done;
	}

	tc0 = &sc->port[txq->eq.tx_chan]->sched_params->cl_rl[0];
	if (idx != -1) {
		/*
		 * Bind to a different class at index idx.
		 */
		tc = &tc0[idx];
		if (tc->flags & CLRL_ERR) {
			rc = ENXIO;
			goto done;
		} else {
			/*
			 * Ok to proceed.  Place a reference on the new class
			 * while still holding on to the reference on the
			 * previous class, if any.
			 */
			tc->refcount++;
		}
	}
	/* Mark as busy before letting go of the lock. */
	old_idx = txq->tc_idx;
	txq->tc_idx = -2;
	FUNC7(&sc->tc_lock);

	rc = FUNC4(sc, NULL, SLEEP_OK | INTR_OK, "t4btxq");
	if (rc != 0)
		return (rc);
	fw_mnem = (FUNC1(FW_PARAMS_MNEM_DMAQ) |
	    FUNC2(FW_PARAMS_PARAM_DMAQ_EQ_SCHEDCLASS_ETH) |
	    FUNC3(txq->eq.cntxt_id));
	fw_class = idx < 0 ? 0xffffffff : idx;
	rc = -FUNC8(sc, sc->mbox, sc->pf, 0, 1, &fw_mnem, &fw_class);
	FUNC5(sc, 0);

	FUNC6(&sc->tc_lock);
	FUNC0(txq->tc_idx == -2);
	if (rc == 0) {
		/*
		 * Unbind, bind, or bind to a different class succeeded.  Remove
		 * the reference on the old traffic class, if any.
		 */
		if (old_idx != -1) {
			tc = &tc0[old_idx];
			FUNC0(tc->refcount > 0);
			tc->refcount--;
		}
		txq->tc_idx = idx;
	} else {
		/*
		 * Unbind, bind, or bind to a different class failed.  Remove
		 * the anticipatory reference on the new traffic class, if any.
		 */
		if (idx != -1) {
			tc = &tc0[idx];
			FUNC0(tc->refcount > 0);
			tc->refcount--;
		}
		txq->tc_idx = old_idx;
	}
done:
	FUNC0(txq->tc_idx >= -1 && txq->tc_idx < sc->chip_params->nsched_cls);
	FUNC7(&sc->tc_lock);
	return (rc);
}