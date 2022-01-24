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
struct ecore_queue_state_params {int /*<<< orphan*/  ramrod_flags; struct ecore_queue_sp_obj* q_obj; } ;
struct ecore_queue_sp_obj {unsigned long pending; int (* check_transition ) (struct bxe_softc*,struct ecore_queue_sp_obj*,struct ecore_queue_state_params*) ;int (* set_pending ) (struct ecore_queue_sp_obj*,struct ecore_queue_state_params*) ;int (* send_cmd ) (struct bxe_softc*,struct ecore_queue_state_params*) ;int (* wait_comp ) (struct bxe_softc*,struct ecore_queue_sp_obj*,int) ;int /*<<< orphan*/  next_state; int /*<<< orphan*/  (* complete_cmd ) (struct bxe_softc*,struct ecore_queue_sp_obj*,int) ;} ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*,unsigned long) ; 
 int /*<<< orphan*/  ECORE_Q_STATE_MAX ; 
 int FUNC3 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int ECORE_SUCCESS ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RAMROD_COMP_WAIT ; 
 int /*<<< orphan*/  RAMROD_DRV_CLR_ONLY ; 
 int FUNC6 (struct bxe_softc*,struct ecore_queue_sp_obj*,struct ecore_queue_state_params*) ; 
 int FUNC7 (struct ecore_queue_sp_obj*,struct ecore_queue_state_params*) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*,struct ecore_queue_sp_obj*,int) ; 
 int FUNC9 (struct bxe_softc*,struct ecore_queue_state_params*) ; 
 int FUNC10 (struct bxe_softc*,struct ecore_queue_sp_obj*,int) ; 

int FUNC11(struct bxe_softc *sc,
			     struct ecore_queue_state_params *params)
{
	struct ecore_queue_sp_obj *o = params->q_obj;
	int rc, pending_bit;
	unsigned long *pending = &o->pending;

	/* Check that the requested transition is legal */
	rc = o->check_transition(sc, o, params);
	if (rc) {
		FUNC1("check transition returned an error. rc %d\n", rc);
		return ECORE_INVAL;
	}

	/* Set "pending" bit */
	FUNC2(sc, "pending bit was=%lx\n", o->pending);
	pending_bit = o->set_pending(o, params);
	FUNC2(sc, "pending bit now=%lx\n", o->pending);

	/* Don't send a command if only driver cleanup was requested */
	if (FUNC5(RAMROD_DRV_CLR_ONLY, &params->ramrod_flags))
		o->complete_cmd(sc, o, pending_bit);
	else {
		/* Send a ramrod */
		rc = o->send_cmd(sc, params);
		if (rc) {
			o->next_state = ECORE_Q_STATE_MAX;
			FUNC0(pending_bit, pending);
			FUNC4();
			return rc;
		}

		if (FUNC5(RAMROD_COMP_WAIT, &params->ramrod_flags)) {
			rc = o->wait_comp(sc, o, pending_bit);
			if (rc)
				return rc;

			return ECORE_SUCCESS;
		}
	}

	return FUNC3(pending_bit, pending);
}