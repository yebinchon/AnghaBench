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
struct index_state {int dummy; } ;
struct attr_stack {int dummy; } ;

/* Variables and functions */
 scalar_t__ GIT_ATTR_CHECKIN ; 
 scalar_t__ GIT_ATTR_CHECKOUT ; 
 scalar_t__ GIT_ATTR_INDEX ; 
 scalar_t__ direction ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct attr_stack* FUNC1 (char const*,int) ; 
 struct attr_stack* FUNC2 (struct index_state const*,char const*,int) ; 
 struct attr_stack* FUNC3 (int,int) ; 

__attribute__((used)) static struct attr_stack *FUNC4(const struct index_state *istate,
				    const char *path, int macro_ok)
{
	struct attr_stack *res = NULL;

	if (direction == GIT_ATTR_INDEX) {
		res = FUNC2(istate, path, macro_ok);
	} else if (!FUNC0()) {
		if (direction == GIT_ATTR_CHECKOUT) {
			res = FUNC2(istate, path, macro_ok);
			if (!res)
				res = FUNC1(path, macro_ok);
		} else if (direction == GIT_ATTR_CHECKIN) {
			res = FUNC1(path, macro_ok);
			if (!res)
				/*
				 * There is no checked out .gitattributes file
				 * there, but we might have it in the index.
				 * We allow operation in a sparsely checked out
				 * work tree, so read from it.
				 */
				res = FUNC2(istate, path, macro_ok);
		}
	}

	if (!res)
		res = FUNC3(1, sizeof(*res));
	return res;
}