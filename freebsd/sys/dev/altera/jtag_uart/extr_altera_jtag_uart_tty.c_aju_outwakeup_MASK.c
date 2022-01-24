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
struct tty {int dummy; } ;
struct altera_jtag_uart_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct altera_jtag_uart_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct altera_jtag_uart_softc*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC2 (struct altera_jtag_uart_softc*,struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,int /*<<< orphan*/ ) ; 
 struct altera_jtag_uart_softc* FUNC4 (struct tty*) ; 

__attribute__((used)) static void
FUNC5(struct tty *tp)
{
	struct altera_jtag_uart_softc *sc = FUNC4(tp);

	FUNC3(tp, MA_OWNED);

	FUNC0(sc);
	FUNC2(sc, tp);
	FUNC1(sc);
}