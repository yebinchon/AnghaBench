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
struct uart_opal_softc {int /*<<< orphan*/  polltime; int /*<<< orphan*/  callout; int /*<<< orphan*/ * irqres; struct tty* tp; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPAL_POLL_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct uart_opal_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 
 int FUNC6 (struct uart_opal_softc*) ; 

__attribute__((used)) static void
FUNC7(void *v)
{
	struct uart_opal_softc *sc = v;
	struct tty *tp = sc->tp;
	int c;

	FUNC2(tp);
	while ((c = FUNC6(sc)) > 0)
		FUNC4(tp, c, 0);
	FUNC5(tp);
	FUNC3(tp);

	FUNC1(OPAL_POLL_EVENTS, NULL);

	if (sc->irqres == NULL)
		FUNC0(&sc->callout, sc->polltime, uart_opal_intr, sc);
}