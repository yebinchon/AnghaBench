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
typedef  int uint16_t ;
struct agp_i810_softc {int /*<<< orphan*/  bdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  AGP_G4x_GCC1_SIZE_1M 132 
#define  AGP_G4x_GCC1_SIZE_2M 131 
 int AGP_G4x_GCC1_SIZE_MASK ; 
#define  AGP_G4x_GCC1_SIZE_VT_1M 130 
#define  AGP_G4x_GCC1_SIZE_VT_1_5M 129 
#define  AGP_G4x_GCC1_SIZE_VT_2M 128 
 int /*<<< orphan*/  AGP_I810_PGTBL_SIZE_1MB ; 
 int /*<<< orphan*/  AGP_I810_PGTBL_SIZE_1_5MB ; 
 int /*<<< orphan*/  AGP_I810_PGTBL_SIZE_2MB ; 
 int /*<<< orphan*/  AGP_I830_GCC1 ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct agp_i810_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct agp_i810_softc *sc;
	uint16_t gcc1;

	sc = FUNC2(dev);

	gcc1 = FUNC4(sc->bdev, AGP_I830_GCC1, 2);
	switch (gcc1 & AGP_G4x_GCC1_SIZE_MASK) {
	case AGP_G4x_GCC1_SIZE_1M:
	case AGP_G4x_GCC1_SIZE_VT_1M:
		FUNC0(dev, AGP_I810_PGTBL_SIZE_1MB);
		break;
	case AGP_G4x_GCC1_SIZE_VT_1_5M:
		FUNC0(dev, AGP_I810_PGTBL_SIZE_1_5MB);
		break;
	case AGP_G4x_GCC1_SIZE_2M:
	case AGP_G4x_GCC1_SIZE_VT_2M:
		FUNC0(dev, AGP_I810_PGTBL_SIZE_2MB);
		break;
	default:
		FUNC3(dev, "Unknown page table size\n");
		return (ENXIO);
	}

	return (FUNC1(dev));
}