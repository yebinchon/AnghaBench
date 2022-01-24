#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct g_raid3_softc {TYPE_1__* sc_zones; } ;
typedef  enum g_raid3_zones { ____Placeholder_g_raid3_zones } g_raid3_zones ;
struct TYPE_2__ {int /*<<< orphan*/  sz_zone; } ;

/* Variables and functions */
 int G_RAID3_NUM_ZONES ; 
 int /*<<< orphan*/  M_RAID3 ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ g_raid3_use_malloc ; 
 int FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(struct g_raid3_softc *sc, void *ptr, size_t size)
{
	enum g_raid3_zones zone;

	if (g_raid3_use_malloc ||
	    (zone = FUNC1(size)) == G_RAID3_NUM_ZONES)
		FUNC0(ptr, M_RAID3);
	else {
		FUNC2(sc->sc_zones[zone].sz_zone,
		    ptr, &sc->sc_zones[zone]);
	}
}