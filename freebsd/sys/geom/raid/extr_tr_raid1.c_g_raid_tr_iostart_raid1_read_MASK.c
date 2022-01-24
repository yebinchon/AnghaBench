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
struct g_raid_tr_object {TYPE_1__* tro_volume; } ;
struct g_raid_subdisk {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  v_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct bio* FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct g_raid_subdisk*,struct bio*) ; 
 struct g_raid_subdisk* FUNC4 (TYPE_1__*,struct bio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct g_raid_tr_object *tr, struct bio *bp)
{
	struct g_raid_subdisk *sd;
	struct bio *cbp;

	sd = FUNC4(tr->tro_volume, bp, 0);
	FUNC0(sd != NULL, ("No active disks in volume %s.",
		tr->tro_volume->v_name));

	cbp = FUNC1(bp);
	if (cbp == NULL) {
		FUNC2(bp, ENOMEM);
		return;
	}

	FUNC3(sd, cbp);
}