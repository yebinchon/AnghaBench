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
struct uart_softc {int sc_txbusy; scalar_t__ sc_leaving; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 int FALSE ; 
 struct uart_softc* FUNC0 (struct tty*) ; 

__attribute__((used)) static bool
FUNC1(struct tty *tp)
{
	struct uart_softc *sc;

	sc = FUNC0(tp);
	if (sc == NULL || sc->sc_leaving)
                return (FALSE);

	return (sc->sc_txbusy);
}