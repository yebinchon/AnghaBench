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
struct ucom_softc {struct tty* sc_tty; } ;
struct TYPE_2__ {int c_cflag; } ;
struct tty {TYPE_1__ t_termios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int HUPCL ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  SER_DTR ; 
 int /*<<< orphan*/  FUNC1 (struct ucom_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ucom_softc *sc)
{
	struct tty *tp = sc->sc_tty;

	FUNC1(sc, MA_OWNED);

	FUNC0("\n");

	/*
	 * Hang up if necessary:
	 */
	if (tp->t_termios.c_cflag & HUPCL) {
		FUNC2(tp, 0, SER_DTR);
	}
}