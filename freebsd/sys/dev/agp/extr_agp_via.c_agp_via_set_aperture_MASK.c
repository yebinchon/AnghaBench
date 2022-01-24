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
struct agp_via_softc {int /*<<< orphan*/ * regs; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 size_t REG_APSIZE ; 
 struct agp_via_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * via_v2_regs ; 

__attribute__((used)) static int
FUNC4(device_t dev, u_int32_t aperture)
{
	struct agp_via_softc *sc = FUNC0(dev);
	u_int32_t apsize, key, val;

	if (sc->regs == via_v2_regs) {
		/*
		 * Reverse the magic from get_aperture.
		 */
		apsize = ((aperture - 1) >> 20) ^ 0xff;

		/*
	 	 * Double check for sanity.
	 	 */
		if ((((apsize ^ 0xff) << 20) | ((1 << 20) - 1)) + 1 != aperture)
			return EINVAL;

		FUNC3(dev, sc->regs[REG_APSIZE], apsize, 1);
	} else {
		switch (aperture) {
		case 0x80000000:
			key = 0x800;
			break;
		case 0x40000000:
			key = 0xc00;
			break;
		case 0x20000000:
			key = 0xe00;
			break;
		case 0x10000000:
			key = 0xf00;
			break;
		case 0x08000000:
			key = 0xf20;
			break;
		case 0x04000000:
			key = 0xf30;
			break;
		case 0x02000000:
			key = 0xf38;
			break;
		case 0x01000000:
			key = 0xf3c;
			break;
		case 0x00800000:
			key = 0xf3e;
			break;
		case 0x00400000:
			key = 0xf3f;
			break;
		default:
			FUNC1(dev, "Invalid aperture size (%dMb)\n",
			    aperture / 1024 / 1024);
			return EINVAL;
		}
		val = FUNC2(dev, sc->regs[REG_APSIZE], 2);
		FUNC3(dev, sc->regs[REG_APSIZE], 
		    ((val & ~0xfff) | key), 2);
	}
	return 0;
}