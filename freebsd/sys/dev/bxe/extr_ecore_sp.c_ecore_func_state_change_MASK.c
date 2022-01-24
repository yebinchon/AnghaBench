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
struct ecore_func_state_params {int cmd; int /*<<< orphan*/  ramrod_flags; struct ecore_func_sp_obj* f_obj; } ;
struct ecore_func_sp_obj {unsigned long pending; int (* check_transition ) (struct bxe_softc*,struct ecore_func_sp_obj*,struct ecore_func_state_params*) ;int (* send_cmd ) (struct bxe_softc*,struct ecore_func_state_params*) ;int (* wait_comp ) (struct bxe_softc*,struct ecore_func_sp_obj*,int) ;int /*<<< orphan*/  next_state; int /*<<< orphan*/  one_pending_mutex; } ;
struct bxe_softc {int dummy; } ;
typedef  enum ecore_func_cmd { ____Placeholder_ecore_func_cmd } ecore_func_cmd ;

/* Variables and functions */
 int ECORE_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  ECORE_F_STATE_MAX ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int ECORE_SUCCESS ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RAMROD_COMP_WAIT ; 
 int /*<<< orphan*/  RAMROD_DRV_CLR_ONLY ; 
 int /*<<< orphan*/  RAMROD_RETRY ; 
 int /*<<< orphan*/  FUNC9 (struct bxe_softc*,struct ecore_func_sp_obj*,int) ; 
 int FUNC10 (struct bxe_softc*,struct ecore_func_sp_obj*,struct ecore_func_state_params*) ; 
 int FUNC11 (struct bxe_softc*,struct ecore_func_sp_obj*,struct ecore_func_state_params*) ; 
 int FUNC12 (struct bxe_softc*,struct ecore_func_state_params*) ; 
 int FUNC13 (struct bxe_softc*,struct ecore_func_sp_obj*,int) ; 

int FUNC14(struct bxe_softc *sc,
			    struct ecore_func_state_params *params)
{
	struct ecore_func_sp_obj *o = params->f_obj;
	int rc, cnt = 300;
	enum ecore_func_cmd cmd = params->cmd;
	unsigned long *pending = &o->pending;

	FUNC3(&o->one_pending_mutex);

	/* Check that the requested transition is legal */
	rc = o->check_transition(sc, o, params);
	if ((rc == ECORE_BUSY) &&
	    (FUNC8(RAMROD_RETRY, &params->ramrod_flags))) {
		while ((rc == ECORE_BUSY) && (--cnt > 0)) {
			FUNC4(&o->one_pending_mutex);
			FUNC2(10);
			FUNC3(&o->one_pending_mutex);
			rc = o->check_transition(sc, o, params);
		}
		if (rc == ECORE_BUSY) {
			FUNC4(&o->one_pending_mutex);
			FUNC1("timeout waiting for previous ramrod completion\n");
			return rc;
		}
	} else if (rc) {
		FUNC4(&o->one_pending_mutex);
		return rc;
	}

	/* Set "pending" bit */
	FUNC6(cmd, pending);

	/* Don't send a command if only driver cleanup was requested */
	if (FUNC8(RAMROD_DRV_CLR_ONLY, &params->ramrod_flags)) {
		FUNC9(sc, o, cmd);
		FUNC4(&o->one_pending_mutex);
	} else {
		/* Send a ramrod */
		rc = o->send_cmd(sc, params);

		FUNC4(&o->one_pending_mutex);

		if (rc) {
			o->next_state = ECORE_F_STATE_MAX;
			FUNC0(cmd, pending);
			FUNC7();
			return rc;
		}

		if (FUNC8(RAMROD_COMP_WAIT, &params->ramrod_flags)) {
			rc = o->wait_comp(sc, o, cmd);
			if (rc)
				return rc;

			return ECORE_SUCCESS;
		}
	}

	return FUNC5(cmd, pending);
}