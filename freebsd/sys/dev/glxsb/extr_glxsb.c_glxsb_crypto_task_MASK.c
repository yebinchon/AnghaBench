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
struct TYPE_2__ {struct glxsb_session* to_ses; struct cryptop* to_crp; struct cryptodesc* to_enccrd; struct cryptodesc* to_maccrd; } ;
struct glxsb_softc {int /*<<< orphan*/  sc_cid; int /*<<< orphan*/  sc_task_mtx; int /*<<< orphan*/  sc_task_count; TYPE_1__ sc_to; } ;
struct glxsb_session {int dummy; } ;
struct cryptop {int crp_etype; } ;
struct cryptodesc {struct cryptodesc* crd_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_SYMQ ; 
 int /*<<< orphan*/  FUNC0 (struct cryptop*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cryptop*,struct cryptodesc*,struct glxsb_session*,struct glxsb_softc*) ; 
 int FUNC3 (struct glxsb_session*,struct cryptodesc*,struct cryptop*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(void *arg, int pending)
{
	struct glxsb_softc *sc = arg;
	struct glxsb_session *ses;
	struct cryptop *crp;
	struct cryptodesc *enccrd, *maccrd;
	int error;

	maccrd = sc->sc_to.to_maccrd;
	enccrd = sc->sc_to.to_enccrd;
	crp = sc->sc_to.to_crp;
	ses = sc->sc_to.to_ses;

	/* Perform data authentication if requested before encryption */
	if (maccrd != NULL && maccrd->crd_next == enccrd) {
		error = FUNC3(ses, maccrd, crp);
		if (error != 0)
			goto out;
	}

	error = FUNC2(crp, enccrd, ses, sc);
	if (error != 0)
		goto out;

	/* Perform data authentication if requested after encryption */
	if (maccrd != NULL && enccrd->crd_next == maccrd) {
		error = FUNC3(ses, maccrd, crp);
		if (error != 0)
			goto out;
	}
out:
	FUNC4(&sc->sc_task_mtx);
	sc->sc_task_count--;
	FUNC5(&sc->sc_task_mtx);

	crp->crp_etype = error;
	FUNC1(sc->sc_cid, CRYPTO_SYMQ);
	FUNC0(crp);
}