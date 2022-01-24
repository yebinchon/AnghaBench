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
struct ecore_queue_sp_obj {unsigned long pending; scalar_t__ next_tx_only; scalar_t__ max_cos; scalar_t__ num_tx_only; int /*<<< orphan*/  next_state; int /*<<< orphan*/  state; int /*<<< orphan*/ * cids; } ;
struct bxe_softc {int dummy; } ;
typedef  enum ecore_queue_cmd { ____Placeholder_ecore_queue_cmd } ecore_queue_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__,...) ; 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*,int,scalar_t__,...) ; 
 size_t ECORE_PRIMARY_CID_INDEX ; 
 int /*<<< orphan*/  ECORE_Q_STATE_MAX ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct bxe_softc *sc,
				struct ecore_queue_sp_obj *o,
				enum ecore_queue_cmd cmd)
{
	unsigned long cur_pending = o->pending;

	if (!FUNC4(cmd, &cur_pending)) {
		FUNC1("Bad MC reply %d for queue %d in state %d pending 0x%lx, next_state %d\n",
			  cmd, o->cids[ECORE_PRIMARY_CID_INDEX],
			  o->state, cur_pending, o->next_state);
		return ECORE_INVAL;
	}

	if (o->next_tx_only >= o->max_cos)
		/* >= because tx only must always be smaller than cos since the
		 * primary connection supports COS 0
		 */
		FUNC1("illegal value for next tx_only: %d. max cos was %d",
			  o->next_tx_only, o->max_cos);

	FUNC2(sc,
		  "Completing command %d for queue %d, setting state to %d\n",
		  cmd, o->cids[ECORE_PRIMARY_CID_INDEX], o->next_state);

	if (o->next_tx_only)  /* print num tx-only if any exist */
		FUNC2(sc, "primary cid %d: num tx-only cons %d\n",
			  o->cids[ECORE_PRIMARY_CID_INDEX], o->next_tx_only);

	o->state = o->next_state;
	o->num_tx_only = o->next_tx_only;
	o->next_state = ECORE_Q_STATE_MAX;

	/* It's important that o->state and o->next_state are
	 * updated before o->pending.
	 */
	FUNC5();

	FUNC0(cmd, &o->pending);
	FUNC3();

	return ECORE_SUCCESS;
}