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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct attr_stack*,char*,char const*,int,int) ; 
 char* FUNC2 (struct index_state const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*,char) ; 
 struct attr_stack* FUNC4 (int,int) ; 

__attribute__((used)) static struct attr_stack *FUNC5(const struct index_state *istate,
					       const char *path,
					       int macro_ok)
{
	struct attr_stack *res;
	char *buf, *sp;
	int lineno = 0;

	if (!istate)
		return NULL;

	buf = FUNC2(istate, path, NULL);
	if (!buf)
		return NULL;

	res = FUNC4(1, sizeof(*res));
	for (sp = buf; *sp; ) {
		char *ep;
		int more;

		ep = FUNC3(sp, '\n');
		more = (*ep == '\n');
		*ep = '\0';
		FUNC1(res, sp, path, ++lineno, macro_ok);
		sp = ep + more;
	}
	FUNC0(buf);
	return res;
}