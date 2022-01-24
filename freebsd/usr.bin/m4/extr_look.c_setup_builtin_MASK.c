#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct macro_definition {int dummy; } ;
typedef  TYPE_2__* ndptr ;
struct TYPE_5__ {unsigned int builtin_type; TYPE_1__* d; } ;
struct TYPE_4__ {char* defn; unsigned int type; int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 scalar_t__ prefix_builtins ; 
 int FUNC2 (char const*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*) ; 

void
FUNC5(const char *name, unsigned int type)
{
	ndptr n;
	char *name2;

	if (prefix_builtins) {
		name2 = FUNC3(FUNC2(name)+3+1, NULL);
		FUNC1(name2, "m4_", 3);
		FUNC1(name2 + 3, name, FUNC2(name)+1);
	} else
		name2 = FUNC4(name);

	n = FUNC0(name2);
	n->builtin_type = type;
	n->d = FUNC3(sizeof(struct macro_definition), NULL);
	n->d->defn = name2;
	n->d->type = type;
	n->d->next = NULL;
}