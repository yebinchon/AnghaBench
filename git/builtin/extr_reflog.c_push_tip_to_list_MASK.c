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
struct object_id {int dummy; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int REF_ISSYMREF ; 
 int /*<<< orphan*/  FUNC0 (struct commit*,struct commit_list**) ; 
 struct commit* FUNC1 (int /*<<< orphan*/ ,struct object_id const*,int) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC2(const char *refname, const struct object_id *oid,
			    int flags, void *cb_data)
{
	struct commit_list **list = cb_data;
	struct commit *tip_commit;
	if (flags & REF_ISSYMREF)
		return 0;
	tip_commit = FUNC1(the_repository, oid, 1);
	if (!tip_commit)
		return 0;
	FUNC0(tip_commit, list);
	return 0;
}