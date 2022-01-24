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
struct TYPE_2__ {int flags; } ;
struct dn_fsk {int /*<<< orphan*/  qht; TYPE_1__ fs; } ;
struct copy_args {int dummy; } ;

/* Variables and functions */
 int DN_QHT_HASH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct copy_args*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,struct copy_args*),struct copy_args*) ; 

__attribute__((used)) static int
FUNC2(struct copy_args *a, struct dn_fsk *fs, int flags)
{
	if (!fs->qht)
		return 0;
	if (fs->fs.flags & DN_QHT_HASH)
		FUNC1(fs->qht, copy_q_cb, a);
	else
		FUNC0(fs->qht, a);
	return 0;
}