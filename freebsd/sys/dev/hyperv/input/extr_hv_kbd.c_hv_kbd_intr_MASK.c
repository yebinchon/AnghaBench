#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_8__ {int /*<<< orphan*/  kc_arg; int /*<<< orphan*/  (* kc_func ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_10__ {TYPE_1__ kb_callback; } ;
struct TYPE_9__ {int sc_flags; TYPE_3__ sc_kbd; } ;
typedef  TYPE_2__ hv_kbd_sc ;

/* Variables and functions */
 int HVKBD_FLAG_POLLING ; 
 int /*<<< orphan*/  KBDIO_KEYINPUT ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ NOKEY ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(hv_kbd_sc *sc)
{
	uint32_t c;
	if ((sc->sc_flags & HVKBD_FLAG_POLLING) != 0)
		return;

	if (FUNC0(&sc->sc_kbd) &&
	    FUNC1(&sc->sc_kbd)) {
		/* let the callback function process the input */
		(sc->sc_kbd.kb_callback.kc_func) (&sc->sc_kbd, KBDIO_KEYINPUT,
		    sc->sc_kbd.kb_callback.kc_arg);
	} else {
		/* read and discard the input, no one is waiting for it */
		do {
			c = FUNC2(&sc->sc_kbd, 0);
		} while (c != NOKEY);
	}
}