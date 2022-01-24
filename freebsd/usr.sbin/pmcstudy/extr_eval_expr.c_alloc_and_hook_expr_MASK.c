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
struct expression {struct expression* prev; struct expression* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct expression* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct expression*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static struct expression *
FUNC4(struct expression **exp_p, struct expression **last_p)
{
	struct expression *ex, *at;

	ex = FUNC1(sizeof(struct expression));
	if (ex == NULL) {
		FUNC3("Out of memory in exp allocation\n");
		FUNC0(-2);
	}
	FUNC2(ex, 0, sizeof(struct expression));
	if (*exp_p == NULL) {
		*exp_p = ex;
	}
	at = *last_p;
	if (at == NULL) {
		/* First one, its last */
		*last_p = ex;
	} else {
		/* Chain it to the end and update last */
		at->next = ex;
		ex->prev = at;
		*last_p = ex;
	}
	return (ex);
}