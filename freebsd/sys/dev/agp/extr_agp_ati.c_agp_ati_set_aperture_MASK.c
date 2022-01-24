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
struct agp_ati_softc {scalar_t__ is_rs300; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ATI_RS100_APSIZE ; 
 int ATI_RS300_APSIZE ; 
 struct agp_ati_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, u_int32_t aperture)
{
	struct agp_ati_softc *sc = FUNC0(dev);
	int size_value;
	u_int32_t apsize_reg;

	if (sc->is_rs300)
		apsize_reg = ATI_RS300_APSIZE;
	else
		apsize_reg = ATI_RS100_APSIZE;

	size_value = FUNC2(dev, apsize_reg, 4);

	size_value &= ~0x0000000e;
	size_value |= (FUNC1(aperture / (32 * 1024 * 1024)) - 1) << 1;

	FUNC3(dev, apsize_reg, size_value, 4);

	return 0;
}