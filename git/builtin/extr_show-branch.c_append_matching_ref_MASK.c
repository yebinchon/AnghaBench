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
 int FUNC0 (char const*,struct object_id const*,int,void*) ; 
 int FUNC1 (char const*,struct object_id const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,struct object_id const*,int,void*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  match_ref_pattern ; 
 int match_ref_slash ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const char *refname, const struct object_id *oid,
			       int flag, void *cb_data)
{
	/* we want to allow pattern hold/<asterisk> to show all
	 * branches under refs/heads/hold/, and v0.99.9? to show
	 * refs/tags/v0.99.9a and friends.
	 */
	const char *tail;
	int slash = FUNC3(refname);
	for (tail = refname; *tail && match_ref_slash < slash; )
		if (*tail++ == '/')
			slash--;
	if (!*tail)
		return 0;
	if (FUNC5(match_ref_pattern, tail, 0))
		return 0;
	if (FUNC4(refname, "refs/heads/"))
		return FUNC0(refname, oid, flag, cb_data);
	if (FUNC4(refname, "refs/tags/"))
		return FUNC2(refname, oid, flag, cb_data);
	return FUNC1(refname, oid, 0);
}