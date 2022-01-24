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
struct amdgpio_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpio_softc*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpio_softc*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OUTPUT_ENABLE_OFF ; 
 int FUNC4 (struct amdgpio_softc*,int) ; 

__attribute__((used)) static bool
FUNC5(struct amdgpio_softc *sc, uint32_t pin)
{
	uint32_t reg, val;
	bool ret;

	/* Get the current pin state */
	FUNC0(sc);

	reg = FUNC1(pin);
	val = FUNC4(sc, reg);

	if (val & FUNC3(OUTPUT_ENABLE_OFF))
		ret = true;
	else
		ret = false;

	FUNC2(sc);

	return (ret);
}