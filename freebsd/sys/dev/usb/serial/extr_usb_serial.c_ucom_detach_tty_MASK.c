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
struct ucom_super_softc {int dummy; } ;
struct ucom_softc {int sc_flag; TYPE_1__* sc_callback; struct tty* sc_tty; int /*<<< orphan*/ * sc_consdev; } ;
struct tty {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ucom_stop_write ) (struct ucom_softc*) ;int /*<<< orphan*/  (* ucom_stop_read ) (struct ucom_softc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct ucom_softc*,struct tty*) ; 
 int /*<<< orphan*/  M_USBDEV ; 
 int UCOM_FLAG_CONSOLE ; 
 int UCOM_FLAG_GONE ; 
 int UCOM_FLAG_HL_READY ; 
 int UCOM_FLAG_LL_READY ; 
 int /*<<< orphan*/  FUNC1 (struct ucom_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ucom_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ucom_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ucom_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty*) ; 
 int /*<<< orphan*/  FUNC10 (struct tty*) ; 
 int /*<<< orphan*/  FUNC11 (struct tty*) ; 
 int /*<<< orphan*/  ucom_close_refs ; 
 struct ucom_softc* ucom_cons_softc ; 
 int /*<<< orphan*/  ucom_mtx ; 

__attribute__((used)) static void
FUNC12(struct ucom_super_softc *ssc, struct ucom_softc *sc)
{
	struct tty *tp = sc->sc_tty;

	FUNC0("sc = %p, tp = %p\n", sc, sc->sc_tty);

	if (sc->sc_consdev != NULL) {
		FUNC3(sc->sc_consdev);
		FUNC4(sc->sc_consdev, M_USBDEV);
		sc->sc_consdev = NULL;
	}

	if (sc->sc_flag & UCOM_FLAG_CONSOLE) {
		FUNC1(ucom_cons_softc);
		FUNC11(ucom_cons_softc->sc_tty);
		sc->sc_flag &= ~UCOM_FLAG_CONSOLE;
		FUNC2(ucom_cons_softc);
		ucom_cons_softc = NULL;
	}

	/* the config thread has been stopped when we get here */

	FUNC1(sc);
	sc->sc_flag |= UCOM_FLAG_GONE;
	sc->sc_flag &= ~(UCOM_FLAG_HL_READY | UCOM_FLAG_LL_READY);
	FUNC2(sc);

	if (tp) {
		FUNC5(&ucom_mtx);
		ucom_close_refs++;
		FUNC6(&ucom_mtx);

		FUNC9(tp);

		FUNC11(tp);	/* close, if any */

		FUNC10(tp);

		FUNC1(sc);
		/*
		 * make sure that read and write transfers are stopped
		 */
		if (sc->sc_callback->ucom_stop_read)
			(sc->sc_callback->ucom_stop_read) (sc);
		if (sc->sc_callback->ucom_stop_write)
			(sc->sc_callback->ucom_stop_write) (sc);
		FUNC2(sc);
	}
}