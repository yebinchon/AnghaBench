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
struct TYPE_4__ {struct gpiokeys_softc* kb_data; } ;
typedef  TYPE_1__ keyboard_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpiokeys_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpiokeys_softc*) ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(keyboard_t *kbd)
{
	int result;
	struct gpiokeys_softc *sc = kbd->kb_data;

	FUNC0(sc);
	result = FUNC2(kbd);
	FUNC1(sc);

	return (result);
}