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
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  null_oid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct commit *old_commit, struct commit *new_commit,
			      int changed)
{
	return FUNC1(NULL, "post-checkout",
			   FUNC0(old_commit ? &old_commit->object.oid : &null_oid),
			   FUNC0(new_commit ? &new_commit->object.oid : &null_oid),
			   changed ? "1" : "0", NULL);
	/* "new_commit" can be NULL when checking out from the index before
	   a commit exists. */

}