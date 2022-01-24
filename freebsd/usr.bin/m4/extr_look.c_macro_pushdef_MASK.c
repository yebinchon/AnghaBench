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
struct macro_definition {struct macro_definition* next; } ;
typedef  TYPE_1__* ndptr ;
struct TYPE_3__ {struct macro_definition* d; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct macro_definition*,char const*,char const*) ; 
 struct macro_definition* FUNC2 (int,int /*<<< orphan*/ *) ; 

void
FUNC3(const char *name, const char *defn)
{
	ndptr n;
	struct macro_definition *d;

	n = FUNC0(name);
	d = FUNC2(sizeof(struct macro_definition), NULL);
	d->next = n->d;
	n->d = d;
	FUNC1(n->d, defn, name);
}