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
struct agp_i810_softc {int stolen; int stolen_size; int /*<<< orphan*/  bdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_I830_GCC1 ; 
 unsigned int AGP_I830_GCC1_GMS ; 
#define  AGP_I830_GCC1_GMS_STOLEN_1024 130 
#define  AGP_I830_GCC1_GMS_STOLEN_512 129 
#define  AGP_I830_GCC1_GMS_STOLEN_8192 128 
 int EINVAL ; 
 struct agp_i810_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct agp_i810_softc *sc;
	unsigned int gcc1;

	sc = FUNC0(dev);

	gcc1 = FUNC2(sc->bdev, AGP_I830_GCC1, 1);
	switch (gcc1 & AGP_I830_GCC1_GMS) {
	case AGP_I830_GCC1_GMS_STOLEN_512:
		sc->stolen = (512 - 132) * 1024 / 4096;
		sc->stolen_size = 512 * 1024;
		break;
	case AGP_I830_GCC1_GMS_STOLEN_1024:
		sc->stolen = (1024 - 132) * 1024 / 4096;
		sc->stolen_size = 1024 * 1024;
		break;
	case AGP_I830_GCC1_GMS_STOLEN_8192:
		sc->stolen = (8192 - 132) * 1024 / 4096;
		sc->stolen_size = 8192 * 1024;
		break;
	default:
		sc->stolen = 0;
		FUNC1(dev,
		    "unknown memory configuration, disabling (GCC1 %x)\n",
		    gcc1);
		return (EINVAL);
	}
	return (0);
}