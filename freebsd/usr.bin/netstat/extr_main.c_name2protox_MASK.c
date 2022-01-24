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
struct protox {int dummy; } ;
struct protoent {char** p_aliases; char const* p_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct protoent* FUNC1 () ; 
 struct protox* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static struct protox *
FUNC5(const char *name)
{
	struct protox *tp;
	char **alias;			/* alias from p->aliases */
	struct protoent *p;

	/*
	 * Try to find the name in the list of "well-known" names. If that
	 * fails, check if name is an alias for an Internet protocol.
	 */
	if ((tp = FUNC2(name)) != NULL)
		return (tp);

	FUNC3(1);			/* make protocol lookup cheaper */
	while ((p = FUNC1()) != NULL) {
		/* assert: name not same as p->name */
		for (alias = p->p_aliases; *alias; alias++)
			if (FUNC4(name, *alias) == 0) {
				FUNC0();
				return (FUNC2(p->p_name));
			}
	}
	FUNC0();
	return (NULL);
}