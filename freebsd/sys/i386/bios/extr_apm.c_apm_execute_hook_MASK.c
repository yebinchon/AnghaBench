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
struct apmhook {char* ah_name; int /*<<< orphan*/  ah_arg; scalar_t__ (* ah_fun ) (int /*<<< orphan*/ ) ;struct apmhook* ah_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct apmhook *list)
{
	struct apmhook *p;

	for (p = list; p != NULL; p = p->ah_next) {
		FUNC0("Execute APM hook \"%s.\"\n", p->ah_name);
		if ((*(p->ah_fun))(p->ah_arg))
			FUNC1("Warning: APM hook \"%s\" failed", p->ah_name);
	}
}