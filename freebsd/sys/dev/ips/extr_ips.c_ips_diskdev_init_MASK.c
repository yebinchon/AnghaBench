#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  dev; int /*<<< orphan*/ * diskdev; TYPE_1__* drives; } ;
typedef  TYPE_2__ ips_softc_t ;
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/  sector_count; int /*<<< orphan*/  raid_lvl; } ;

/* Variables and functions */
 scalar_t__ IPS_LD_DEGRADED ; 
 scalar_t__ IPS_LD_FREE ; 
 scalar_t__ IPS_LD_OKAY ; 
 int IPS_MAX_NUM_DRIVES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(ips_softc_t *sc)
{
	int i;
	for(i=0; i < IPS_MAX_NUM_DRIVES; i++){
		if(sc->drives[i].state == IPS_LD_FREE) continue;
		FUNC2(sc->dev, "Logical Drive %d: RAID%d sectors: %u, state %s\n",
			i, sc->drives[i].raid_lvl,
			sc->drives[i].sector_count,
			FUNC4(sc->drives[i].state));
		if(sc->drives[i].state == IPS_LD_OKAY ||
		   sc->drives[i].state == IPS_LD_DEGRADED){
			sc->diskdev[i] = FUNC1(sc->dev, NULL, -1);
			FUNC3(sc->diskdev[i],(void *)(uintptr_t) i);
		}
	}
	if(FUNC0(sc->dev)){
		FUNC2(sc->dev, "Attaching bus failed\n");
	}
	return 0;
}