#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sc_kbd; } ;
typedef  TYPE_1__ hv_kbd_sc ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(device_t dev)
{
	int error = 0;
	hv_kbd_sc *sc = FUNC1(dev);
	FUNC3(&sc->sc_kbd);
	if (FUNC0(&sc->sc_kbd)) {
		error = FUNC5(&sc->sc_kbd);
		if (error) {
			FUNC2(dev, "WARNING: kbd_unregister() "
			    "returned non-zero! (ignored)\n");
		}
	}
#ifdef KBD_INSTALL_CDEV
	error = kbd_detach(&sc->sc_kbd);
#endif
	return (error);
}