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
struct name {char* n_name; int /*<<< orphan*/  n_type; struct name* n_flink; } ;
struct grouphead {int dummy; } ;

/* Variables and functions */
 struct grouphead* FUNC0 (char*) ; 
 struct name* FUNC1 (struct name*,struct grouphead*,int,int /*<<< orphan*/ ) ; 
 struct name* FUNC2 (struct name*,struct name*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 

struct name *
FUNC4(struct name *names)
{
	struct name *new, *np, *cp;
	struct grouphead *gh;
	int metoo;

	new = NULL;
	np = names;
	metoo = (FUNC3("metoo") != NULL);
	while (np != NULL) {
		if (np->n_name[0] == '\\') {
			cp = np->n_flink;
			new = FUNC2(new, np);
			np = cp;
			continue;
		}
		gh = FUNC0(np->n_name);
		cp = np->n_flink;
		if (gh != NULL)
			new = FUNC1(new, gh, metoo, np->n_type);
		else
			new = FUNC2(new, np);
		np = cp;
	}
	return (new);
}