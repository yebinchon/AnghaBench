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
struct iscsi_softc {int /*<<< orphan*/  sc_cv; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_sessions; } ;
struct iscsi_session {int /*<<< orphan*/  is_login_cv; int /*<<< orphan*/  is_maintenance_cv; int /*<<< orphan*/  is_lock; int /*<<< orphan*/  is_conn; int /*<<< orphan*/  is_postponed; int /*<<< orphan*/  is_outstanding; int /*<<< orphan*/ * is_login_pdu; int /*<<< orphan*/  is_terminating; int /*<<< orphan*/  is_callout; struct iscsi_softc* is_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_ISCSI ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct iscsi_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct iscsi_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  is_next ; 
 int /*<<< orphan*/  FUNC14 (struct iscsi_session*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC18(struct iscsi_session *is)
{
	struct iscsi_softc *sc;

	sc = is->is_softc;
	FUNC16(&sc->sc_lock);
	FUNC6(&sc->sc_sessions, is, is_next);
	FUNC17(&sc->sc_lock);

	FUNC11(is->is_conn);
	FUNC7(&is->is_callout);

	FUNC1(is);

	FUNC3(is->is_terminating, ("is_terminating == false"));

#ifdef ICL_KERNEL_PROXY
	if (is->is_login_pdu != NULL) {
		icl_pdu_free(is->is_login_pdu);
		is->is_login_pdu = NULL;
	}
	cv_signal(&is->is_login_cv);
#endif

	FUNC14(is, true);

	FUNC3(FUNC5(&is->is_outstanding),
	    ("destroying session with active tasks"));
	FUNC3(FUNC4(&is->is_postponed),
	    ("destroying session with postponed PDUs"));

	FUNC2(is);

	FUNC12(is->is_conn);
	FUNC15(&is->is_lock);
	FUNC8(&is->is_maintenance_cv);
#ifdef ICL_KERNEL_PROXY
	cv_destroy(&is->is_login_cv);
#endif

	FUNC0(is, "terminated");
	FUNC10(is, M_ISCSI);

	/*
	 * The iscsi_unload() routine might be waiting.
	 */
	FUNC9(&sc->sc_cv);
}