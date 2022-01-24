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
struct agp_softc {int /*<<< orphan*/  as_allocated; int /*<<< orphan*/  as_maxmem; int /*<<< orphan*/ * as_aperture; } ;
struct agp_info {int /*<<< orphan*/  ai_memory_used; int /*<<< orphan*/  ai_memory_allowed; int /*<<< orphan*/  ai_aperture_size; int /*<<< orphan*/  ai_aperture_base; int /*<<< orphan*/  ai_mode; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AGP_STATUS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct agp_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(device_t dev, struct agp_info *info)
{
	struct agp_softc *sc = FUNC2(dev);

	info->ai_mode =
		FUNC3(dev, FUNC1(dev) + AGP_STATUS, 4);
	if (sc->as_aperture != NULL)
		info->ai_aperture_base = FUNC4(sc->as_aperture);
	else
		info->ai_aperture_base = 0;
	info->ai_aperture_size = FUNC0(dev);
	info->ai_memory_allowed = sc->as_maxmem;
	info->ai_memory_used = sc->as_allocated;
}