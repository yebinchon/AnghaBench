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
struct uart_softc {int sc_hwsig; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_softc*,int) ; 
 struct uart_softc* FUNC2 (struct tty*) ; 

__attribute__((used)) static int
FUNC3(struct tty *tp, int biton, int bitoff)
{
	struct uart_softc *sc;

	sc = FUNC2(tp);
	if (biton != 0 || bitoff != 0)
		FUNC1(sc, FUNC0(bitoff | biton) | biton);
	return (sc->sc_hwsig);
}