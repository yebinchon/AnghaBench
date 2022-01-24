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
typedef  int u_char ;
struct resource {int dummy; } ;
struct macgpio_softc {int /*<<< orphan*/  sc_gpios; } ;
struct macgpio_devinfo {scalar_t__ gpio_num; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int SYS_RES_IRQ ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 struct macgpio_devinfo* FUNC3 (int /*<<< orphan*/ ) ; 
 struct macgpio_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t bus, device_t child, int type, int rid,
			   struct resource *res)
{
	struct macgpio_softc *sc;
	struct macgpio_devinfo *dinfo;
	u_char val;

	sc = FUNC4(bus);
	dinfo = FUNC3(child);

	if (type != SYS_RES_IRQ)
		return ENXIO;

	if (dinfo->gpio_num >= 0) {
		val = FUNC1(sc->sc_gpios,dinfo->gpio_num);
		val |= 0x80;
		FUNC2(sc->sc_gpios,dinfo->gpio_num,val);
	}

	return (FUNC0(bus, type, rid, res));
}