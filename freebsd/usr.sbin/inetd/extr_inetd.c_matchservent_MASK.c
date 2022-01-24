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
struct servent {char* s_name; char** s_aliases; } ;

/* Variables and functions */
 struct servent* FUNC0 (char const*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static int
FUNC3(const char *name1, const char *name2, const char *proto)
{
	char **alias, *p;
	struct servent *se;

	if (FUNC1(proto, "unix") == 0) {
		if ((p = FUNC2(name1, '/')) != NULL)
			name1 = p + 1;
		if ((p = FUNC2(name2, '/')) != NULL)
			name2 = p + 1;
	}
	if (FUNC1(name1, name2) == 0)
		return(1);
	if ((se = FUNC0(name1, proto)) != NULL) {
		if (FUNC1(name2, se->s_name) == 0)
			return(1);
		for (alias = se->s_aliases; *alias; alias++)
			if (FUNC1(name2, *alias) == 0)
				return(1);
	}
	return(0);
}