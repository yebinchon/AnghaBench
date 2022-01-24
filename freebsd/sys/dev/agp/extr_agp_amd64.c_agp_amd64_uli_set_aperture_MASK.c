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
typedef  scalar_t__ uint32_t ;
struct agp_amd64_softc {scalar_t__ apbase; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_AMD64_ULI_ENU_SCR ; 
 int EINVAL ; 
 struct agp_amd64_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC2(device_t dev, uint32_t aperture)
{
	struct agp_amd64_softc *sc = FUNC0(dev);

	switch (aperture) {
	case 0x02000000:	/*  32 MB */
	case 0x04000000:	/*  64 MB */
	case 0x08000000:	/* 128 MB */
	case 0x10000000:	/* 256 MB */
		break;
	default:
		return (EINVAL);
	}

	FUNC1(dev, AGP_AMD64_ULI_ENU_SCR,
	    sc->apbase + aperture - 1, 4);

	return (0);
}