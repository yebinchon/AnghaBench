#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* name; int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ collsym_t ;

/* Variables and functions */
 int /*<<< orphan*/  INTERR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  collsyms ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC6(char *name)
{
	collsym_t	*sym;

	if ((sym = FUNC2(1, sizeof(*sym))) == NULL) {
		FUNC3(stderr,"out of memory");
		return;
	}
	sym->name = name;
	sym->ref = FUNC5();

	if (FUNC0(collsyms, &collsyms, sym) != NULL) {
		/*
		 * This should never happen because we are only called
		 * for undefined symbols.
		 */
		FUNC4(sym);
		INTERR;
		return;
	}
	FUNC1(collsyms, &collsyms, sym);
}