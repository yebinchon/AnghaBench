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
 int /*<<< orphan*/  FUNC1 (struct nct_softc*) ; 
 int GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  FUNC2 (struct nct_softc*) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 struct nct_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct nct_softc*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct nct_softc*,size_t,int) ; 

__attribute__((used)) static int
FUNC7(device_t dev, uint32_t pin_num)
{
	struct nct_softc *sc;

	if (!FUNC3(pin_num))
		return (EINVAL);

	sc = FUNC4(dev);
	FUNC0(sc);
	FUNC1(sc);
	if ((sc->pins[pin_num].gp_flags & GPIO_PIN_OUTPUT) == 0) {
		FUNC2(sc);
		return (EINVAL);
	}
	if (FUNC5(sc, pin_num))
		FUNC6(sc, pin_num, 0);
	else
		FUNC6(sc, pin_num, 1);

	FUNC2(sc);

	return (0);
}