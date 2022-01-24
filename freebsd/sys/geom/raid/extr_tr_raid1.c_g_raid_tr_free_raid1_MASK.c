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
struct g_raid_tr_raid1_object {int /*<<< orphan*/ * trso_buffer; } ;
struct g_raid_tr_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TR_RAID1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct g_raid_tr_object *tr)
{
	struct g_raid_tr_raid1_object *trs;

	trs = (struct g_raid_tr_raid1_object *)tr;

	if (trs->trso_buffer != NULL) {
		FUNC0(trs->trso_buffer, M_TR_RAID1);
		trs->trso_buffer = NULL;
	}
	return (0);
}