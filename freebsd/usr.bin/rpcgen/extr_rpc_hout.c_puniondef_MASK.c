#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char const* type; char const* name; } ;
struct TYPE_8__ {TYPE_4__* default_decl; TYPE_5__* cases; TYPE_4__ enum_decl; } ;
struct TYPE_9__ {TYPE_1__ un; } ;
struct TYPE_10__ {char* def_name; TYPE_2__ def; } ;
typedef  TYPE_3__ definition ;
typedef  TYPE_4__ declaration ;
struct TYPE_12__ {scalar_t__ contflag; TYPE_4__ case_decl; struct TYPE_12__* next; } ;
typedef  TYPE_5__ case_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 int /*<<< orphan*/  FUNC1 (char const*,TYPE_4__*,int,char*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static void
FUNC3(definition *def)
{
	case_list *l;
	const char *name = def->def_name;
	declaration *decl;

	FUNC0(fout, "struct %s {\n", name);
	decl = &def->def.un.enum_decl;
	if (FUNC2(decl->type, "bool")) {
		FUNC0(fout, "\tbool_t %s;\n", decl->name);
	} else {
		FUNC0(fout, "\t%s %s;\n", decl->type, decl->name);
	}
	FUNC0(fout, "\tunion {\n");
	for (l = def->def.un.cases; l != NULL; l = l->next) {
	    if (l->contflag == 0)
		FUNC1(name, &l->case_decl, 2, ";\n");
	}
	decl = def->def.un.default_decl;
	if (decl && !FUNC2(decl->type, "void")) {
		FUNC1(name, decl, 2, ";\n");
	}
	FUNC0(fout, "\t} %s_u;\n", name);
	FUNC0(fout, "};\n");
	FUNC0(fout, "typedef struct %s %s;\n", name, name);
}