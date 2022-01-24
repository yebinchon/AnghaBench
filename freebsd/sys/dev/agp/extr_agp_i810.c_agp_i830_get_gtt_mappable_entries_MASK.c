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
typedef  int uint16_t ;
struct agp_i810_softc {int gtt_mappable_entries; int /*<<< orphan*/  bdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_I830_GCC1 ; 
 int AGP_I830_GCC1_GMASIZE ; 
 int AGP_I830_GCC1_GMASIZE_64 ; 
 int AGP_PAGE_SHIFT ; 
 struct agp_i810_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	struct agp_i810_softc *sc;
	uint32_t ap;
	uint16_t gmch_ctl;

	sc = FUNC0(dev);
	gmch_ctl = FUNC1(sc->bdev, AGP_I830_GCC1, 2);
	if ((gmch_ctl & AGP_I830_GCC1_GMASIZE) == AGP_I830_GCC1_GMASIZE_64)
		ap = 64;
	else
		ap = 128;
	sc->gtt_mappable_entries = (ap * 1024 * 1024) >> AGP_PAGE_SHIFT;
	return (0);
}