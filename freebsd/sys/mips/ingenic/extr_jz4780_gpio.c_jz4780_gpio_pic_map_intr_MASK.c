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
typedef  size_t u_int ;
struct jz4780_gpio_softc {TYPE_1__* pins; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {struct intr_irqsrc pin_irqsrc; } ;

/* Variables and functions */
 struct jz4780_gpio_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct intr_map_data*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
	struct jz4780_gpio_softc *sc;
	int retval;
	u_int irq;

	retval = FUNC1(dev, data, &irq, NULL, NULL);
	if (retval == 0) {
		sc = FUNC0(dev);
		*isrcp = &sc->pins[irq].pin_irqsrc;
	}
	return (retval);
}