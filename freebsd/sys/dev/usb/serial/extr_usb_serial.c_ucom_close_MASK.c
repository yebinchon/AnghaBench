#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ucom_softc {int sc_flag; TYPE_2__* sc_callback; TYPE_1__* sc_close_task; } ;
struct tty {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* ucom_stop_read ) (struct ucom_softc*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct tty*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int UCOM_FLAG_HL_READY ; 
 int UCOM_FLAG_RTS_IFLOW ; 
 int /*<<< orphan*/  FUNC1 (struct ucom_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ucom_softc*) ; 
 struct ucom_softc* FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  ucom_cfg_close ; 
 int /*<<< orphan*/  FUNC4 (struct ucom_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ucom_softc*) ; 

__attribute__((used)) static void
FUNC6(struct tty *tp)
{
	struct ucom_softc *sc = FUNC3(tp);

	FUNC1(sc, MA_OWNED);

	FUNC0("tp=%p\n", tp);

	if (!(sc->sc_flag & UCOM_FLAG_HL_READY)) {
		FUNC0("tp=%p already closed\n", tp);
		return;
	}
	FUNC5(sc);

	FUNC4(sc, ucom_cfg_close, NULL,
	    &sc->sc_close_task[0].hdr,
	    &sc->sc_close_task[1].hdr);

	sc->sc_flag &= ~(UCOM_FLAG_HL_READY | UCOM_FLAG_RTS_IFLOW);

	if (sc->sc_callback->ucom_stop_read) {
		(sc->sc_callback->ucom_stop_read) (sc);
	}
}