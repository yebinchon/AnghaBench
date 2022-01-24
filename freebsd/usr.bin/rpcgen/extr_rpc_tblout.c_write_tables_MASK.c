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
struct TYPE_5__ {scalar_t__ val; struct TYPE_5__* next; } ;
typedef  TYPE_1__ list ;
struct TYPE_6__ {scalar_t__ def_kind; } ;
typedef  TYPE_2__ definition ;

/* Variables and functions */
 scalar_t__ DEF_PROGRAM ; 
 TYPE_1__* defined ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  fout ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

void
FUNC2(void)
{
	list *l;
	definition *def;

	FUNC0(fout, "\n");
	for (l = defined; l != NULL; l = l->next) {
		def = (definition *) l->val;
		if (def->def_kind == DEF_PROGRAM) {
			FUNC1(def);
		}
	}
}