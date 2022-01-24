#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int rel; int /*<<< orphan*/  array_max; int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ declaration ;

/* Variables and functions */
#define  REL_ALIAS 129 
#define  REL_VECTOR 128 
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*,int,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(int indent, declaration *decl, int flag)
{
	switch (decl->rel) {
	case  REL_ALIAS :
		FUNC0(indent, decl, flag, REL_ALIAS);
		break;
	case REL_VECTOR :
		FUNC2(fout, indent);
		FUNC1(fout, "{\n");
		FUNC2(fout, indent + 1);
		FUNC1(fout, "%s *genp;\n\n", decl->type);
		FUNC2(fout, indent + 1);
		FUNC1(fout,
			"for (i = 0, genp = objp->%s;\n", decl->name);
		FUNC2(fout, indent + 2);
		FUNC1(fout, "i < %s; i++) {\n", decl->array_max);
		FUNC0(indent + 2, decl, flag, REL_VECTOR);
		FUNC2(fout, indent + 1);
		FUNC1(fout, "}\n");
		FUNC2(fout, indent);
		FUNC1(fout, "}\n");
		break;
	default:
		break;
	}
}