#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_5__* procs; struct TYPE_13__* next; } ;
typedef  TYPE_4__ version_list ;
struct TYPE_10__ {TYPE_7__* decls; } ;
struct TYPE_14__ {int arg_num; TYPE_1__ args; struct TYPE_14__* next; } ;
typedef  TYPE_5__ proc_list ;
struct TYPE_11__ {TYPE_4__* versions; } ;
struct TYPE_12__ {TYPE_2__ pr; } ;
struct TYPE_15__ {TYPE_3__ def; } ;
typedef  TYPE_6__ definition ;
struct TYPE_16__ {int /*<<< orphan*/  decl; struct TYPE_16__* next; } ;
typedef  TYPE_7__ decl_list ;

/* Variables and functions */
 int /*<<< orphan*/  newstyle ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(definition *def)
{
	decl_list *dl;
	version_list *vlist;
	proc_list *plist;

	for (vlist = def->def.pr.versions; vlist != NULL; vlist = vlist->next)
		for (plist = vlist->procs; plist != NULL; plist = plist->next) {
			if (!newstyle || plist->arg_num < 2)
				continue; /* old style, or single argument */
			FUNC0(plist);
			for (dl = plist->args.decls; dl != NULL;
			     dl = dl->next)
				FUNC1(1, &dl->decl);
			FUNC2();
		}
}