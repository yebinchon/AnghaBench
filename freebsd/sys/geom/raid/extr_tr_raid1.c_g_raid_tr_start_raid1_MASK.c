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
struct g_raid_volume {int dummy; } ;
struct g_raid_tr_raid1_object {scalar_t__ trso_starting; } ;
struct g_raid_tr_object {struct g_raid_volume* tro_volume; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct g_raid_volume*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(struct g_raid_tr_object *tr)
{
	struct g_raid_tr_raid1_object *trs;
	struct g_raid_volume *vol;

	trs = (struct g_raid_tr_raid1_object *)tr;
	vol = tr->tro_volume;
	trs->trso_starting = 0;
	FUNC0(vol, NULL);
	return (0);
}