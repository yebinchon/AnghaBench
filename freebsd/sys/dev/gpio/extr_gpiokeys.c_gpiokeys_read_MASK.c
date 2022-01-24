#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct gpiokeys_softc {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  kb_count; struct gpiokeys_softc* kb_data; } ;
typedef  TYPE_1__ keyboard_t ;
typedef  int int32_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct gpiokeys_softc*,int) ; 

__attribute__((used)) static int
FUNC2(keyboard_t *kbd, int wait)
{
	struct gpiokeys_softc *sc = kbd->kb_data;
	int32_t keycode;

	if (!FUNC0(kbd))
		return (-1);

	/* XXX */
	keycode = FUNC1(sc, (wait == FALSE) ? 0 : 1);
	if (!FUNC0(kbd) || (keycode == -1))
		return (-1);

	++(kbd->kb_count);

	return (keycode);
}