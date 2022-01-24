#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct octeon_gpio_softc {int dummy; } ;
struct gpio_pin {int gp_pin; unsigned int gp_flags; } ;
struct TYPE_3__ {int tx_oe; int rx_xor; } ;
struct TYPE_4__ {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
typedef  TYPE_2__ cvmx_gpio_bit_cfgx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_gpio_softc*) ; 
 unsigned int GPIO_PIN_INPUT ; 
 unsigned int GPIO_PIN_INVIN ; 
 unsigned int GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct octeon_gpio_softc *sc, struct gpio_pin *pin,
    unsigned int flags)
{
	uint32_t mask;
	cvmx_gpio_bit_cfgx_t gpio_cfgx;

	mask = 1 << pin->gp_pin;
	FUNC1(sc);

	/*
	 * Manage input/output
	 */
	if (flags & (GPIO_PIN_INPUT|GPIO_PIN_OUTPUT)) {
		gpio_cfgx.u64 = FUNC3(FUNC0(pin->gp_pin));
		pin->gp_flags &= ~(GPIO_PIN_INPUT|GPIO_PIN_OUTPUT);
		if (flags & GPIO_PIN_OUTPUT) {
			pin->gp_flags |= GPIO_PIN_OUTPUT;
			gpio_cfgx.s.tx_oe = 1;
		}
		else {
			pin->gp_flags |= GPIO_PIN_INPUT;
			gpio_cfgx.s.tx_oe = 0;
		}
		if (flags & GPIO_PIN_INVIN)
			gpio_cfgx.s.rx_xor = 1;
		else
			gpio_cfgx.s.rx_xor = 0;
		FUNC4(FUNC0(pin->gp_pin), gpio_cfgx.u64);
	}

	FUNC2(sc);
}