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
struct agp_i810_softc {int /*<<< orphan*/  bdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct agp_i810_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intel_agp ; 

device_t
FUNC1(void)
{
	struct agp_i810_softc *sc;

	sc = FUNC0(intel_agp);
	return (sc->bdev);
}