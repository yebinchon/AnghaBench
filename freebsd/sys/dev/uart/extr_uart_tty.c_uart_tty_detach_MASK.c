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
struct TYPE_3__ {struct tty* tp; } ;
struct TYPE_4__ {TYPE_1__ u_tty; } ;
struct uart_softc {int /*<<< orphan*/  sc_softih; TYPE_2__ sc_u; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 

int
FUNC3(struct uart_softc *sc)
{
	struct tty *tp;

	tp = sc->sc_u.u_tty.tp;

	FUNC1(tp);
	FUNC0(sc->sc_softih);
	FUNC2(tp);

	return (0);
}