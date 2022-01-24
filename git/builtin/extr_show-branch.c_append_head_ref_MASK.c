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
 int FUNC0 (char const*,struct object_id const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id*,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(const char *refname, const struct object_id *oid,
			   int flag, void *cb_data)
{
	struct object_id tmp;
	int ofs = 11;
	if (!FUNC3(refname, "refs/heads/"))
		return 0;
	/* If both heads/foo and tags/foo exists, get_sha1 would
	 * get confused.
	 */
	if (FUNC1(refname + ofs, &tmp) || !FUNC2(&tmp, oid))
		ofs = 5;
	return FUNC0(refname + ofs, oid, 0);
}