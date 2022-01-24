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
typedef  int u_int32_t ;
struct sc_info {TYPE_1__* cfg; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int subdevice; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENVY24HT_CCS_GPIO_HDATA ; 
 int /*<<< orphan*/  ENVY24HT_CCS_GPIO_LDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC2(struct sc_info *sc, u_int32_t data)
{
#if(0)
	device_printf(sc->dev, "envy24ht_gpiowr(sc, 0x%02x)\n", data & 0x7FFFFF);
	return;
#endif
	FUNC1(sc, ENVY24HT_CCS_GPIO_LDATA, data, 2);
	if (sc->cfg->subdevice != 0x1150)
	FUNC1(sc, ENVY24HT_CCS_GPIO_HDATA, data >> 16, 1);
	return;
}