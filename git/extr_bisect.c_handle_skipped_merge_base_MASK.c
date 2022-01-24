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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct object_id const* current_bad_oid ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  good_revs ; 
 char* FUNC2 (int /*<<< orphan*/ *,char) ; 
 char* FUNC3 (struct object_id const*) ; 
 int /*<<< orphan*/  term_bad ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void FUNC5(const struct object_id *mb)
{
	char *mb_hex = FUNC3(mb);
	char *bad_hex = FUNC3(current_bad_oid);
	char *good_hex = FUNC2(&good_revs, ' ');

	FUNC4(FUNC0("the merge base between %s and [%s] "
		"must be skipped.\n"
		"So we cannot be sure the first %s commit is "
		"between %s and %s.\n"
		"We continue anyway."),
		bad_hex, good_hex, term_bad, mb_hex, bad_hex);
	FUNC1(good_hex);
}