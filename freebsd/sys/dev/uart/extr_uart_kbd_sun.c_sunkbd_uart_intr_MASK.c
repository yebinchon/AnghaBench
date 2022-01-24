#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  kc_arg; int /*<<< orphan*/  (* kc_func ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {TYPE_1__ kb_callback; } ;
struct sunkbd_softc {TYPE_3__ sc_kbd; TYPE_2__* sc_uart; } ;
struct TYPE_7__ {int /*<<< orphan*/  sc_ttypend; scalar_t__ sc_leaving; } ;

/* Variables and functions */
 int /*<<< orphan*/  KBDIO_KEYINPUT ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int SER_INT_MASK ; 
 int SER_INT_RXREADY ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct sunkbd_softc *sc = arg;
	int pend;

	if (sc->sc_uart->sc_leaving)
		return;

	pend = FUNC2(&sc->sc_uart->sc_ttypend);
	if (!(pend & SER_INT_MASK))
		return;

	if (pend & SER_INT_RXREADY) {
		if (FUNC0(&sc->sc_kbd) && FUNC1(&sc->sc_kbd)) {
			sc->sc_kbd.kb_callback.kc_func(&sc->sc_kbd,
			    KBDIO_KEYINPUT, sc->sc_kbd.kb_callback.kc_arg);
		}
	}
}