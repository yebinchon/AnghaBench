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
typedef  int uint32_t ;
struct agp_amd64_softc {int apbase; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_AMD64_NVIDIA_1_APLIMIT1 ; 
 int /*<<< orphan*/  AGP_AMD64_NVIDIA_1_APLIMIT2 ; 
 int /*<<< orphan*/  AGP_AMD64_NVIDIA_1_APSIZE ; 
 int EINVAL ; 
 struct agp_amd64_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint32_t aperture)
{
	struct agp_amd64_softc *sc = FUNC0(dev);
	uint32_t apsize;

	switch (aperture) {
	case 0x02000000:	apsize = 0x0f;	break;	/*  32 MB */
	case 0x04000000:	apsize = 0x0e;	break;	/*  64 MB */
	case 0x08000000:	apsize = 0x0c;	break;	/* 128 MB */
	case 0x10000000:	apsize = 0x08;	break;	/* 256 MB */
	case 0x20000000:	apsize = 0x00;	break;	/* 512 MB */
	default:
		return (EINVAL);
	}

	FUNC2(0, 11, 0, AGP_AMD64_NVIDIA_1_APSIZE,
	    (FUNC1(0, 11, 0, AGP_AMD64_NVIDIA_1_APSIZE, 4) &
	    0xfffffff0) | apsize, 4);
	FUNC2(0, 11, 0, AGP_AMD64_NVIDIA_1_APLIMIT1,
	    sc->apbase + aperture - 1, 4);
	FUNC2(0, 11, 0, AGP_AMD64_NVIDIA_1_APLIMIT2,
	    sc->apbase + aperture - 1, 4);

	return (0);
}