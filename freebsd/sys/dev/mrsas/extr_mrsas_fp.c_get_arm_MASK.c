#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
typedef  int u_int32_t ;
struct mrsas_softc {int dummy; } ;
struct TYPE_3__ {int level; } ;
typedef  TYPE_1__ MR_LD_RAID ;
typedef  int /*<<< orphan*/  MR_DRV_RAID_MAP_ALL ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (struct mrsas_softc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

u_int8_t
FUNC4(struct mrsas_softc *sc, u_int32_t ld, u_int8_t span, u_int64_t stripe,
    MR_DRV_RAID_MAP_ALL * map)
{
	MR_LD_RAID *raid = FUNC0(ld, map);

	/* Need to check correct default value */
	u_int32_t arm = 0;

	switch (raid->level) {
	case 0:
	case 5:
	case 6:
		arm = FUNC3(stripe, FUNC1(map, ld, span));
		break;
	case 1:
		/* start with logical arm */
		arm = FUNC2(sc, ld, stripe, map);
		arm *= 2;
		break;
	}

	return arm;
}