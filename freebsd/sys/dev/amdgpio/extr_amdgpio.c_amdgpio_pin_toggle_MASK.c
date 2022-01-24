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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpio_softc*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpio_softc*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  OUTPUT_VALUE_OFF ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpio_softc*,int) ; 
 int FUNC5 (struct amdgpio_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpio_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpio_softc*,int,int) ; 
 struct amdgpio_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 

__attribute__((used)) static int
FUNC10(device_t dev, uint32_t pin)
{
	struct amdgpio_softc *sc;
	uint32_t reg, val;

	sc = FUNC8(dev);

	FUNC9("pin %d\n", pin);
	if (!FUNC6(sc, pin))
		return (EINVAL);

	if (!FUNC4(sc, pin))
		return (EINVAL);

	/* Toggle the pin */
	FUNC0(sc);

	reg = FUNC1(pin);
	val = FUNC5(sc, reg);
	FUNC9("pin %d value before 0x%x\n", pin, val);
	val = val ^ FUNC3(OUTPUT_VALUE_OFF);
	FUNC9("pin %d value after 0x%x\n", pin, val);
	FUNC7(sc, reg, val);

	FUNC2(sc);

	return (0);
}