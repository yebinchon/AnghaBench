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
struct rev_info {int /*<<< orphan*/ * commits; } ;
struct repository {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_REV_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct repository*,struct rev_info*,char const*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct commit**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct repository *r, int rev_nr,
			   struct commit **rev, const char *prefix)
{
	struct rev_info revs;
	int res;

	FUNC1(r, &revs, prefix, "^%s", "%s", 0);

	FUNC0(&revs);
	res = (revs.commits != NULL);

	/* Clean up objects used, as they will be reused. */
	FUNC2(rev_nr, rev, ALL_REV_FLAGS);

	return res;
}