#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct octeon_gpio_softc {int gpio_npins; int /*<<< orphan*/ * busdev; TYPE_3__* gpio_pins; int /*<<< orphan*/  dev; int /*<<< orphan*/ * gpio_ih; struct octeon_gpio_softc** gpio_intr_cookies; int /*<<< orphan*/ ** gpio_irq_res; int /*<<< orphan*/ * gpio_irq_rid; int /*<<< orphan*/  gpio_mtx; } ;
struct octeon_gpio_pin {int /*<<< orphan*/  flags; int /*<<< orphan*/  pin; scalar_t__ name; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int int_en; scalar_t__ int_type; int /*<<< orphan*/  rx_xor; int /*<<< orphan*/  tx_oe; } ;
struct TYPE_5__ {TYPE_1__ s; void* u64; } ;
typedef  TYPE_2__ cvmx_gpio_bit_cfgx_t ;
struct TYPE_6__ {scalar_t__ gp_flags; int /*<<< orphan*/  gp_caps; int /*<<< orphan*/  gp_pin; int /*<<< orphan*/  gp_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEFAULT_CAPS ; 
 int ENXIO ; 
 int /*<<< orphan*/  GPIOMAXNAME ; 
 int /*<<< orphan*/  INTR_TYPE_MISC ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int OCTEON_GPIO_IRQS ; 
 scalar_t__ OCTEON_GPIO_IRQ_EDGE ; 
 scalar_t__ OCTEON_IRQ_GPIO0 ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct octeon_gpio_softc**,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct octeon_gpio_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  octeon_gpio_filter ; 
 int /*<<< orphan*/  octeon_gpio_intr ; 
 int /*<<< orphan*/  FUNC13 (struct octeon_gpio_softc*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 struct octeon_gpio_pin* octeon_gpio_pins ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct octeon_gpio_softc *sc = FUNC7(dev);
	struct octeon_gpio_pin *pinp;
	cvmx_gpio_bit_cfgx_t gpio_cfgx;
	
	int i;

	FUNC1((FUNC8(dev) == 0),
	    ("octeon_gpio: Only one gpio module supported"));

	FUNC11(&sc->gpio_mtx, FUNC6(dev), NULL, MTX_DEF);

	for ( i = 0; i < OCTEON_GPIO_IRQS; i++) {
		if ((sc->gpio_irq_res[i] = FUNC2(dev, 
		    SYS_RES_IRQ, &sc->gpio_irq_rid[i], 
		    OCTEON_IRQ_GPIO0 + i, OCTEON_IRQ_GPIO0 + i, 1, 
		    RF_SHAREABLE | RF_ACTIVE)) == NULL) {
			FUNC9(dev, "unable to allocate IRQ resource\n");
			FUNC12(dev);
			return (ENXIO);
		}

		sc->gpio_intr_cookies[i] = sc;
		if ((FUNC3(dev, sc->gpio_irq_res[i], INTR_TYPE_MISC, 
	    	    octeon_gpio_filter, octeon_gpio_intr, 
		    &(sc->gpio_intr_cookies[i]), &sc->gpio_ih[i]))) {
			FUNC9(dev,
		    	"WARNING: unable to register interrupt handler\n");
			FUNC12(dev);
			return (ENXIO);
		}
	}

	sc->dev = dev;
	/* Configure all pins as input */
	/* disable interrupts for all pins */
	pinp = octeon_gpio_pins;
	i = 0;
	while (pinp->name) {
		FUNC14(sc->gpio_pins[i].gp_name, pinp->name, GPIOMAXNAME);
		sc->gpio_pins[i].gp_pin = pinp->pin;
		sc->gpio_pins[i].gp_caps = DEFAULT_CAPS;
		sc->gpio_pins[i].gp_flags = 0;
		FUNC13(sc, &sc->gpio_pins[i], pinp->flags);
		pinp++;
		i++;
	}

	sc->gpio_npins = i;

#if 0
	/*
	 * Sample: how to enable edge-triggered interrupt
	 * for GPIO pin
	 */
	gpio_cfgx.u64 = cvmx_read_csr(CVMX_GPIO_BIT_CFGX(7));
	gpio_cfgx.s.int_en = 1;
	gpio_cfgx.s.int_type = OCTEON_GPIO_IRQ_EDGE;
	cvmx_write_csr(CVMX_GPIO_BIT_CFGX(7), gpio_cfgx.u64);
#endif

	if (bootverbose) {
		for (i = 0; i < 16; i++) {
			gpio_cfgx.u64 = FUNC4(FUNC0(i));
			FUNC9(dev, "[pin%d] output=%d, invinput=%d, intr=%d, intr_type=%s\n", 
			    i, gpio_cfgx.s.tx_oe, gpio_cfgx.s.rx_xor, 
			    gpio_cfgx.s.int_en, gpio_cfgx.s.int_type ? "rising edge" : "level");
		}
	}
	sc->busdev = FUNC10(dev);
	if (sc->busdev == NULL) {
		FUNC12(dev);
		return (ENXIO);
	}

	return (0);
}