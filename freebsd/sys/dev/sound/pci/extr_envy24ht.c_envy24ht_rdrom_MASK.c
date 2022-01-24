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
typedef  int u_int32_t ;
struct sc_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENVY24HT_CCS_I2CDEV_ROM ; 
 int /*<<< orphan*/  ENVY24HT_CCS_I2CSTAT ; 
 int ENVY24HT_CCS_I2CSTAT_ROM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sc_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct sc_info *sc, u_int32_t addr)
{
	u_int32_t data;

#if(0)
	device_printf(sc->dev, "envy24ht_rdrom(sc, 0x%02x)\n", addr);
#endif
	data = FUNC1(sc, ENVY24HT_CCS_I2CSTAT, 1);
	if ((data & ENVY24HT_CCS_I2CSTAT_ROM) == 0) {
#if(0)
		device_printf(sc->dev, "envy24ht_rdrom(): E2PROM not presented\n");
#endif
		return -1;
	}

	return FUNC2(sc, ENVY24HT_CCS_I2CDEV_ROM, addr);
}