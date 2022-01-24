#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ndptr ;
struct TYPE_4__ {struct macro_definition* d; char const* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  macros ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,unsigned int*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,unsigned int*) ; 

void
FUNC2(void (*f)(const char *, struct macro_definition *))
{
	ndptr n;
	unsigned int i;

	for (n = FUNC0(&macros, &i); n != NULL;
	    n = FUNC1(&macros, &i))
		if (n->d != NULL)
			f(n->name, n->d);
}