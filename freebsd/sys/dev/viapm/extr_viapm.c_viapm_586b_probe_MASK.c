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
typedef  int u_int8_t ;
typedef  int u_int32_t ;
typedef  int u_int16_t ;
struct viapm_softc {int base; int /*<<< orphan*/  iorid; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  VIAPM_586B_3040E_ACTIV ; 
 int /*<<< orphan*/  VIAPM_586B_3040E_BASE ; 
 int /*<<< orphan*/  VIAPM_586B_3040F_ACTIV ; 
 int /*<<< orphan*/  VIAPM_586B_3040F_BASE ; 
 int VIAPM_586B_BA_MASK ; 
#define  VIAPM_586B_OEM_REV_E 131 
#define  VIAPM_586B_OEM_REV_F 130 
#define  VIAPM_586B_PROD_REV_A 129 
 int /*<<< orphan*/  VIAPM_586B_REVID ; 
 int /*<<< orphan*/  VIAPM_TYP_586B_3040E ; 
 int /*<<< orphan*/  VIAPM_TYP_586B_3040F ; 
#define  VIA_586B_PMU_ID 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct viapm_softc*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct viapm_softc *viapm = (struct viapm_softc *)FUNC2(dev);
	u_int32_t l;
	u_int16_t s;
	u_int8_t c;

	switch (FUNC5(dev)) {
	case VIA_586B_PMU_ID:

		FUNC1(viapm, sizeof(struct viapm_softc));

		l = FUNC6(dev, VIAPM_586B_REVID, 1);
		switch (l) {
		case VIAPM_586B_OEM_REV_E:
			viapm->type = VIAPM_TYP_586B_3040E;
			viapm->iorid = VIAPM_586B_3040E_BASE;

			/* Activate IO block access */
			s = FUNC6(dev, VIAPM_586B_3040E_ACTIV, 2);
			FUNC7(dev, VIAPM_586B_3040E_ACTIV, s | 0x1, 2);
			break;

		case VIAPM_586B_OEM_REV_F:
		case VIAPM_586B_PROD_REV_A:
		default:
			viapm->type = VIAPM_TYP_586B_3040F;
			viapm->iorid = VIAPM_586B_3040F_BASE;

			/* Activate IO block access */
			c = FUNC6(dev, VIAPM_586B_3040F_ACTIV, 1);
			FUNC7(dev, VIAPM_586B_3040F_ACTIV, c | 0x80, 1);
			break;
		}

		viapm->base = FUNC6(dev, viapm->iorid, 4) &
				VIAPM_586B_BA_MASK;

		/*
		 * We have to set the I/O resources by hand because it is
		 * described outside the viapmope of the traditional maps
		 */
		if (FUNC0(dev, SYS_RES_IOPORT, viapm->iorid,
							viapm->base, 256)) {
			FUNC3(dev, "could not set bus resource\n");
			return ENXIO;
		}
		FUNC4(dev, "VIA VT82C586B Power Management Unit");
		return (BUS_PROBE_DEFAULT);

	default:
		break;
	}

	return ENXIO;
}