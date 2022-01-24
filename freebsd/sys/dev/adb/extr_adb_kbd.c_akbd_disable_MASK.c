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
struct adb_kbd_softc {int /*<<< orphan*/  sc_repeater; } ;
typedef  int /*<<< orphan*/  keyboard_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int 
FUNC2(keyboard_t *kbd) 
{
	struct adb_kbd_softc *sc;
	sc = (struct adb_kbd_softc *)(kbd);

	FUNC1(&sc->sc_repeater);
	FUNC0(kbd);
	return (0);
}