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
struct dwmmc_softc {int use_pio; int pwren_inverted; int /*<<< orphan*/ * update_ios; int /*<<< orphan*/  hwtype; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int ocd_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HWTYPE_ROCKCHIP ; 
#define  RK2928 128 
 int /*<<< orphan*/  compat_data ; 
 struct dwmmc_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dwmmc_rockchip_update_ios ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct dwmmc_softc *sc;
	int type;

	sc = FUNC0(dev);
	sc->hwtype = HWTYPE_ROCKCHIP;
	type = FUNC2(dev, compat_data)->ocd_data;

	switch (type) {
	case RK2928:
		sc->use_pio = 1;
		break;
	}

	sc->pwren_inverted = 1;

#ifdef EXT_RESOURCES
	sc->update_ios = &dwmmc_rockchip_update_ios;
#endif

	return (FUNC1(dev));
}