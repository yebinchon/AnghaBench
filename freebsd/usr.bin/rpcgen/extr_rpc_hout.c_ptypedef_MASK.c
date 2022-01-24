#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int relation ;
struct TYPE_5__ {char* old_type; int rel; int /*<<< orphan*/  array_max; scalar_t__ old_prefix; } ;
struct TYPE_6__ {TYPE_1__ ty; } ;
struct TYPE_7__ {char* def_name; TYPE_2__ def; } ;
typedef  TYPE_3__ definition ;

/* Variables and functions */
#define  REL_ALIAS 131 
#define  REL_ARRAY 130 
#define  REL_POINTER 129 
#define  REL_VECTOR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 

__attribute__((used)) static void
FUNC4(definition *def)
{
	const char *name = def->def_name;
	const char *old = def->def.ty.old_type;
	char prefix[8];	/* enough to contain "struct ", including NUL */
	relation rel = def->def.ty.rel;


	if (!FUNC2(name, old)) {
		if (FUNC2(old, "string")) {
			old = "char";
			rel = REL_POINTER;
		} else if (FUNC2(old, "opaque")) {
			old = "char";
		} else if (FUNC2(old, "bool")) {
			old = "bool_t";
		}
		if (FUNC3(old, name) && def->def.ty.old_prefix) {
			FUNC1(prefix, "%s ", def->def.ty.old_prefix);
		} else {
			prefix[0] = 0;
		}
		FUNC0(fout, "typedef ");
		switch (rel) {
		case REL_ARRAY:
			FUNC0(fout, "struct {\n");
			FUNC0(fout, "\tu_int %s_len;\n", name);
			FUNC0(fout, "\t%s%s *%s_val;\n", prefix, old, name);
			FUNC0(fout, "} %s", name);
			break;
		case REL_POINTER:
			FUNC0(fout, "%s%s *%s", prefix, old, name);
			break;
		case REL_VECTOR:
			FUNC0(fout, "%s%s %s[%s]", prefix, old, name,
				def->def.ty.array_max);
			break;
		case REL_ALIAS:
			FUNC0(fout, "%s%s %s", prefix, old, name);
			break;
		}
		FUNC0(fout, ";\n");
	}
}