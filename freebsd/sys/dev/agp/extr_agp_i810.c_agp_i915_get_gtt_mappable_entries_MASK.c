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
struct agp_i810_softc {int gtt_mappable_entries; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AGP_PAGE_SHIFT ; 
 struct agp_i810_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	struct agp_i810_softc *sc;
	uint32_t ap;

	sc = FUNC1(dev);
	ap = FUNC0(dev);
	sc->gtt_mappable_entries = ap >> AGP_PAGE_SHIFT;
	return (0);
}