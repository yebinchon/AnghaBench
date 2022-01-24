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
typedef  scalar_t__ u_int ;
struct jz4780_gpio_softc {int /*<<< orphan*/  pins; } ;
struct intr_map_data {int type; } ;
typedef  enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef  enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
#define  INTR_MAP_DATA_FDT 128 
 struct jz4780_gpio_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct intr_map_data*,scalar_t__*,int*,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, struct intr_map_data *data, u_int *irqp,
        enum intr_polarity *polp, enum intr_trigger *trigp)
{
	struct jz4780_gpio_softc *sc;
	enum intr_polarity pol;
	enum intr_trigger trig;
	u_int irq;

	sc = FUNC0(dev);
	switch (data->type) {
#ifdef FDT
	case INTR_MAP_DATA_FDT:
		if (jz_gpio_map_intr_fdt(dev, data, &irq, &pol, &trig) != 0)
			return (EINVAL);
		break;
#endif
	default:
		return (EINVAL);
	}

	if (irq >= FUNC2(sc->pins))
		return (EINVAL);

	*irqp = irq;
	if (polp != NULL)
		*polp = pol;
	if (trigp != NULL)
		*trigp = trig;
	return (0);
}