#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* vers_name; int /*<<< orphan*/  vers_num; struct TYPE_9__* next; } ;
typedef  TYPE_3__ version_list ;
struct TYPE_10__ {scalar_t__ val; struct TYPE_10__* next; } ;
typedef  TYPE_4__ list ;
struct TYPE_7__ {TYPE_3__* versions; } ;
struct TYPE_8__ {TYPE_1__ pr; } ;
struct TYPE_11__ {scalar_t__ def_kind; char* def_name; TYPE_2__ def; } ;
typedef  TYPE_5__ definition ;

/* Variables and functions */
 scalar_t__ DEF_PROGRAM ; 
 int /*<<< orphan*/  _errbuf ; 
 TYPE_4__* defined ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*,char const*) ; 

void
FUNC4(const char *transp)
{
	list *l;
	definition *def;
	version_list *vp;

	for (l = defined; l != NULL; l = l->next) {
		def = (definition *) l->val;
		if (def->def_kind != DEF_PROGRAM) {
			continue;
		}
		for (vp = def->def.pr.versions; vp != NULL; vp = vp->next) {
			FUNC0(fout, "\tif (!svc_create(");
			FUNC2(def->def_name, vp->vers_num);
			FUNC0(fout, ", %s, %s, \"%s\")) {\n",
				def->def_name, vp->vers_name, transp);
			(void) FUNC3(_errbuf,
				"unable to create (%s, %s) for %s.",
					def->def_name, vp->vers_name, transp);
			FUNC1("\t\t");
			FUNC0(fout, "\t\texit(1);\n");
			FUNC0(fout, "\t}\n");
		}
	}
}