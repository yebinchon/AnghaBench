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
typedef  scalar_t__ relation ;
struct TYPE_3__ {char* name; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ declaration ;

/* Variables and functions */
 int PUT ; 
 scalar_t__ REL_ALIAS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(int indent, declaration *decl, int flag, relation rel)
{
	char *upp_case;

	FUNC4(fout, indent);
	if (flag == PUT)
		FUNC0(fout, "IXDR_PUT_");
	else
		if (rel == REL_ALIAS)
			FUNC0(fout, "objp->%s = IXDR_GET_", decl->name);
		else
			FUNC0(fout, "*genp++ = IXDR_GET_");

	upp_case = FUNC5(decl->type);

	/* hack	 - XX */
	if (FUNC2(upp_case, "INT") == 0)
	{
		FUNC1(upp_case);
		upp_case = FUNC3("LONG");
	}

	if (FUNC2(upp_case, "U_INT") == 0)
	{
		FUNC1(upp_case);
		upp_case = FUNC3("U_LONG");
	}
	if (flag == PUT)
		if (rel == REL_ALIAS)
			FUNC0(fout,
				"%s(buf, objp->%s);\n", upp_case, decl->name);
		else
			FUNC0(fout, "%s(buf, *genp++);\n", upp_case);

	else
		FUNC0(fout, "%s(buf);\n", upp_case);
	FUNC1(upp_case);
}