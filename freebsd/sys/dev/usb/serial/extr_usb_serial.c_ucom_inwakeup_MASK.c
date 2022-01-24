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
typedef  size_t uint16_t ;
struct ucom_softc {int sc_flag; size_t sc_jitterbuf_out; size_t sc_jitterbuf_in; scalar_t__* sc_jitterbuf; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct tty*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int UCOM_FLAG_HL_READY ; 
 int UCOM_FLAG_INWAKEUP ; 
 int UCOM_FLAG_RTS_IFLOW ; 
 size_t UCOM_JITTERBUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct ucom_softc*,int /*<<< orphan*/ ) ; 
 struct ucom_softc* FUNC2 (struct tty*) ; 
 scalar_t__ FUNC3 (struct tty*) ; 
 int FUNC4 (struct tty*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ucom_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct tty *tp)
{
	struct ucom_softc *sc = FUNC2(tp);
	uint16_t pos;

	if (sc == NULL)
		return;

	FUNC1(sc, MA_OWNED);

	FUNC0("tp=%p\n", tp);

	if (FUNC3(tp) != 0 || 
	    (sc->sc_flag & UCOM_FLAG_HL_READY) == 0 ||
	    (sc->sc_flag & UCOM_FLAG_INWAKEUP) != 0) {
		return;
	}

	/* prevent recursion */
	sc->sc_flag |= UCOM_FLAG_INWAKEUP;

	pos = sc->sc_jitterbuf_out;

	while (sc->sc_jitterbuf_in != pos) {
		int c;

		c = (char)sc->sc_jitterbuf[pos];

		if (FUNC4(tp, c, 0) == -1)
			break;
		pos++;
		if (pos >= UCOM_JITTERBUF_SIZE)
			pos -= UCOM_JITTERBUF_SIZE;
	}

	sc->sc_jitterbuf_out = pos;

	/* clear RTS in async fashion */
	if ((sc->sc_jitterbuf_in == pos) && 
	    (sc->sc_flag & UCOM_FLAG_RTS_IFLOW))
		FUNC5(sc, 0);

	sc->sc_flag &= ~UCOM_FLAG_INWAKEUP;
}