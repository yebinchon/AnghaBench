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
typedef  int /*<<< orphan*/  u_int16_t ;
struct agp_i810_softc {int /*<<< orphan*/  bdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_I830_GCC1 ; 
 int /*<<< orphan*/  AGP_I830_GCC1_GMASIZE ; 
 int /*<<< orphan*/  AGP_I830_GCC1_GMASIZE_128 ; 
 int /*<<< orphan*/  AGP_I830_GCC1_GMASIZE_64 ; 
 int EINVAL ; 
 struct agp_i810_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, u_int32_t aperture)
{
	struct agp_i810_softc *sc;
	u_int16_t gcc1;

	sc = FUNC0(dev);

	if (aperture != 64 * 1024 * 1024 &&
	    aperture != 128 * 1024 * 1024) {
		FUNC1(dev, "bad aperture size %d\n", aperture);
		return (EINVAL);
	}
	gcc1 = FUNC2(sc->bdev, AGP_I830_GCC1, 2);
	gcc1 &= ~AGP_I830_GCC1_GMASIZE;
	if (aperture == 64 * 1024 * 1024)
		gcc1 |= AGP_I830_GCC1_GMASIZE_64;
	else
		gcc1 |= AGP_I830_GCC1_GMASIZE_128;

	FUNC3(sc->bdev, AGP_I830_GCC1, gcc1, 2);
	return (0);
}