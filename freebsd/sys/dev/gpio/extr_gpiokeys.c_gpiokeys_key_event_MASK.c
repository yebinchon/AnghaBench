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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct gpiokeys_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpiokeys_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpiokeys_softc*) ; 
 int KEY_RELEASE ; 
 int SCAN_KEYCODE_MASK ; 
 int SCAN_PREFIX_E0 ; 
 int SCAN_PREFIX_E1 ; 
 int /*<<< orphan*/  FUNC2 (struct gpiokeys_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct gpiokeys_softc*,int) ; 

__attribute__((used)) static void
FUNC4(struct gpiokeys_softc *sc, uint16_t keycode, int pressed)
{
	uint32_t key;


	key = keycode & SCAN_KEYCODE_MASK;

	if (!pressed)
		key |= KEY_RELEASE;

	FUNC0(sc);
	if (keycode & SCAN_PREFIX_E0)
		FUNC3(sc, 0xe0);
	else if (keycode & SCAN_PREFIX_E1)
		FUNC3(sc, 0xe1);

	FUNC3(sc, key);
	FUNC1(sc);

	FUNC2(sc);
}