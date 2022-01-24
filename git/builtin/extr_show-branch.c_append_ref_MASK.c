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
struct commit {int dummy; } ;

/* Variables and functions */
 int MAX_REVS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 struct commit* FUNC1 (int /*<<< orphan*/ ,struct object_id const*,int) ; 
 int /*<<< orphan*/ ** ref_name ; 
 int ref_name_cnt ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(const char *refname, const struct object_id *oid,
		      int allow_dups)
{
	struct commit *commit = FUNC1(the_repository,
							       oid, 1);
	int i;

	if (!commit)
		return 0;

	if (!allow_dups) {
		/* Avoid adding the same thing twice */
		for (i = 0; i < ref_name_cnt; i++)
			if (!FUNC2(refname, ref_name[i]))
				return 0;
	}
	if (MAX_REVS <= ref_name_cnt) {
		FUNC3(FUNC0("ignoring %s; cannot handle more than %d ref",
			   "ignoring %s; cannot handle more than %d refs",
			   MAX_REVS), refname, MAX_REVS);
		return 0;
	}
	ref_name[ref_name_cnt++] = FUNC4(refname);
	ref_name[ref_name_cnt] = NULL;
	return 0;
}