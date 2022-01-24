#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct macro_definition {int dummy; } ;
typedef  TYPE_1__* ndptr ;
struct TYPE_6__ {scalar_t__ defn; int /*<<< orphan*/ * next; } ;
struct TYPE_5__ {TYPE_2__* d; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ null ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char const*,char const*) ; 
 TYPE_2__* FUNC3 (int,int /*<<< orphan*/ *) ; 

void
FUNC4(const char *name, const char *defn)
{
	ndptr n = FUNC0(name);
	if (n->d != NULL) {
		if (n->d->defn != null)
			FUNC1(n->d->defn);
	} else {
		n->d = FUNC3(sizeof(struct macro_definition), NULL);
		n->d->next = NULL;
	}
	FUNC2(n->d, defn, name);
}