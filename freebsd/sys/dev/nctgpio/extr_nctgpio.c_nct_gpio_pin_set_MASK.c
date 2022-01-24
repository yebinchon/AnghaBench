#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct nct_softc {TYPE_1__* pins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int gp_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct nct_softc*) ; 
 int GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  FUNC1 (struct nct_softc*) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 struct nct_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nct_softc*,size_t,size_t) ; 

__attribute__((used)) static int
FUNC5(device_t dev, uint32_t pin_num, uint32_t pin_value)
{
	struct nct_softc *sc;

	if (!FUNC2(pin_num))
		return (EINVAL);

	sc = FUNC3(dev);
	FUNC0(sc);
	if ((sc->pins[pin_num].gp_flags & GPIO_PIN_OUTPUT) == 0) {
		FUNC1(sc);
		return (EINVAL);
	}
	FUNC4(sc, pin_num, pin_value);
	FUNC1(sc);

	return (0);
}