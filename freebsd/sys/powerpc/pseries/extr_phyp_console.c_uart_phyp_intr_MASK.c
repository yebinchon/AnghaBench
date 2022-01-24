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
struct uart_phyp_softc {int /*<<< orphan*/  polltime; int /*<<< orphan*/  callout; int /*<<< orphan*/ * irqres; struct tty* tp; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct uart_phyp_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 
 int FUNC5 (struct uart_phyp_softc*,unsigned char*,int) ; 

__attribute__((used)) static void
FUNC6(void *v)
{
	struct uart_phyp_softc *sc = v;
	struct tty *tp = sc->tp;
	unsigned char c;
	int len;

	FUNC1(tp);
	while ((len = FUNC5(sc, &c, 1)) > 0)
		FUNC3(tp, c, 0);
	FUNC4(tp);
	FUNC2(tp);

	if (sc->irqres == NULL)
		FUNC0(&sc->callout, sc->polltime, uart_phyp_intr, sc);
}