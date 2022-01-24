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
struct dn_queue {int dummy; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  fs_nr; } ;
struct dn_fsk {int /*<<< orphan*/ * qht; TYPE_1__ fs; } ;

/* Variables and functions */
 int DN_DESTROY ; 
 int DN_QHT_HASH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dn_queue*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  q_delete_cb ; 

__attribute__((used)) static void
FUNC4(struct dn_fsk *fs, int flags)
{
	FUNC0("fs %d start flags %d qht %p",
		fs->fs.fs_nr, flags, fs->qht);
	if (!fs->qht)
		return;
	if (fs->fs.flags & DN_QHT_HASH) {
		FUNC3(fs->qht, q_delete_cb, (void *)(uintptr_t)flags);
		if (flags & DN_DESTROY) {
			FUNC2(fs->qht, 0);
			fs->qht = NULL;
		}
	} else {
		FUNC1((struct dn_queue *)(fs->qht), flags);
		if (flags & DN_DESTROY)
			fs->qht = NULL;
	}
}