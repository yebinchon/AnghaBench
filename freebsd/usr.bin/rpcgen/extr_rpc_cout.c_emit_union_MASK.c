#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_4__* default_decl; TYPE_5__* cases; TYPE_6__ enum_decl; } ;
struct TYPE_9__ {TYPE_1__ un; } ;
struct TYPE_10__ {char const* def_name; TYPE_2__ def; } ;
typedef  TYPE_3__ definition ;
struct TYPE_11__ {char const* name; int /*<<< orphan*/  array_max; int /*<<< orphan*/  rel; int /*<<< orphan*/  type; int /*<<< orphan*/  prefix; } ;
typedef  TYPE_4__ declaration ;
struct TYPE_12__ {int contflag; TYPE_4__ case_decl; int /*<<< orphan*/  case_name; struct TYPE_12__* next; } ;
typedef  TYPE_5__ case_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 char* FUNC8 (scalar_t__) ; 

__attribute__((used)) static void
FUNC9(definition *def)
{
	declaration *dflt;
	case_list *cl;
	declaration *cs;
	char *object;
	const char *vecformat = "objp->%s_u.%s";
	const char *format = "&objp->%s_u.%s";

	FUNC4(1, &def->def.un.enum_decl);
	FUNC0(fout, "\tswitch (objp->%s) {\n", def->def.un.enum_decl.name);
	for (cl = def->def.un.cases; cl != NULL; cl = cl->next) {

		FUNC0(fout, "\tcase %s:\n", cl->case_name);
		if (cl->contflag == 1) /* a continued case statement */
			continue;
		cs = &cl->case_decl;
		if (!FUNC6(cs->type, "void")) {
			object = FUNC8(FUNC7(def->def_name) +
			                 FUNC7(format) + FUNC7(cs->name) + 1);
			if (FUNC2 (cs->type, cs->rel)) {
				FUNC5(object, vecformat, def->def_name,
					cs->name);
			} else {
				FUNC5(object, format, def->def_name,
					cs->name);
			}
			FUNC3(2, cs->prefix, cs->type, cs->rel,
				     cs->array_max, object, cs->name);
			FUNC1(object);
		}
		FUNC0(fout, "\t\tbreak;\n");
	}
	dflt = def->def.un.default_decl;
	if (dflt != NULL) {
		if (!FUNC6(dflt->type, "void")) {
			FUNC0(fout, "\tdefault:\n");
			object = FUNC8(FUNC7(def->def_name) +
			                 FUNC7(format) + FUNC7(dflt->name) + 1);
			if (FUNC2 (dflt->type, dflt->rel)) {
				FUNC5(object, vecformat, def->def_name,
					dflt->name);
			} else {
				FUNC5(object, format, def->def_name,
					dflt->name);
			}

			FUNC3(2, dflt->prefix, dflt->type, dflt->rel,
				    dflt->array_max, object, dflt->name);
			FUNC1(object);
			FUNC0(fout, "\t\tbreak;\n");
		} else {
			FUNC0(fout, "\tdefault:\n");
			FUNC0(fout, "\t\tbreak;\n");
		}
	} else {
		FUNC0(fout, "\tdefault:\n");
		FUNC0(fout, "\t\treturn (FALSE);\n");
	}

	FUNC0(fout, "\t}\n");
}