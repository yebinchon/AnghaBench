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
struct ucom_softc {int sc_flag; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct ucom_softc*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int UCOM_FLAG_HL_READY ; 
 int /*<<< orphan*/  FUNC1 (struct ucom_softc*,int /*<<< orphan*/ ) ; 
 struct ucom_softc* FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct ucom_softc*) ; 

__attribute__((used)) static void
FUNC4(struct tty *tp)
{
	struct ucom_softc *sc = FUNC2(tp);

	FUNC1(sc, MA_OWNED);

	FUNC0("sc = %p\n", sc);

	if (!(sc->sc_flag & UCOM_FLAG_HL_READY)) {
		/* The higher layer is not ready */
		return;
	}
	FUNC3(sc);
}