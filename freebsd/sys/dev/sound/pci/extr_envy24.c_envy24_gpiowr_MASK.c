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
 int /*<<< orphan*/  ENVY24_CCI_GPIODAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct sc_info *sc, u_int32_t data)
{
#if(0)
	device_printf(sc->dev, "envy24_gpiowr(sc, 0x%02x)\n", data & 0xff);
	return;
#endif
	FUNC1(sc, ENVY24_CCI_GPIODAT, data);
	return;
}