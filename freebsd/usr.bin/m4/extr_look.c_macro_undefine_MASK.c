#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct macro_definition {scalar_t__ defn; struct macro_definition* next; } ;
typedef  TYPE_1__* ndptr ;
struct TYPE_3__ {struct macro_definition* d; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct macro_definition*) ; 
 TYPE_1__* FUNC1 (char const*) ; 
 scalar_t__ null ; 

void
FUNC2(const char *name)
{
	ndptr n = FUNC1(name);
	if (n != NULL) {
		struct macro_definition *r, *r2;

		for (r = n->d; r != NULL; r = r2) {
			r2 = r->next;
			if (r->defn != null)
				FUNC0(r->defn);
			FUNC0(r);
		}
		n->d = NULL;
	}
}