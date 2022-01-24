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
struct lpt_data {int sc_state; int sc_backoff; scalar_t__ sc_xfercnt; int /*<<< orphan*/  sc_timer; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EERROR ; 
 int LPTOUTMAX ; 
 int OBUSY ; 
 int OPEN ; 
 int TOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,void (*) (void*),struct lpt_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpt_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct lpt_data *sc = arg;
	device_t dev = sc->sc_dev;
	device_t ppbus;

	ppbus = FUNC1(dev);
	FUNC4(ppbus);
	FUNC2(("T %x ", FUNC5(ppbus)));
	if (sc->sc_state & OPEN) {
		sc->sc_backoff++;
		if (sc->sc_backoff > hz/LPTOUTMAX)
			sc->sc_backoff = hz/LPTOUTMAX;
		FUNC0(&sc->sc_timer, sc->sc_backoff, lptout, sc);
	} else
		sc->sc_state &= ~TOUT;

	if (sc->sc_state & EERROR)
		sc->sc_state &= ~EERROR;

	/*
	 * Avoid possible hangs due to missed interrupts
	 */
	if (sc->sc_xfercnt) {
		FUNC3(sc);
	} else {
		sc->sc_state &= ~OBUSY;
		FUNC6(dev);
	}
}