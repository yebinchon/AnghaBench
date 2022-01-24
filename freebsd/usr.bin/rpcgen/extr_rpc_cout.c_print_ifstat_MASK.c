#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int relation ;

/* Variables and functions */
#define  REL_ALIAS 131 
#define  REL_ARRAY 130 
#define  REL_POINTER 129 
#define  REL_VECTOR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static void
FUNC6(int indent, const char *prefix, const char *type, relation rel,
    const char *amax, const char *objname, const char *name)
{
	const char *alt = NULL;
	int brace = 0;

	switch (rel) {
	case REL_POINTER:
		brace = 1;
		FUNC0(fout, "\t{\n");
		FUNC0(fout, "\t%s **pp = %s;\n", type, objname);
		FUNC3(indent, "pointer");
		FUNC1("(char **)");
		FUNC0(fout, "pp");
		FUNC4(0, prefix, type);
		break;
	case REL_VECTOR:
		if (FUNC5(type, "string")) {
			alt = "string";
		} else if (FUNC5(type, "opaque")) {
			alt = "opaque";
		}
		if (alt) {
			FUNC3(indent, alt);
			FUNC1(objname);
		} else {
			FUNC3(indent, "vector");
			FUNC1("(char *)");
			FUNC0(fout, "%s", objname);
		}
		FUNC1(amax);
		if (!alt) {
			FUNC4(indent + 1, prefix, type);
		}
		break;
	case REL_ARRAY:
		if (FUNC5(type, "string")) {
			alt = "string";
		} else if (FUNC5(type, "opaque")) {
			alt = "bytes";
		}
		if (FUNC5(type, "string")) {
			FUNC3(indent, alt);
			FUNC1(objname);
		} else {
			if (alt) {
				FUNC3(indent, alt);
			} else {
				FUNC3(indent, "array");
			}
			FUNC1("(char **)");
			if (*objname == '&') {
				FUNC0(fout, "%s.%s_val, (u_int *) %s.%s_len",
					objname, name, objname, name);
			} else {
				FUNC0(fout,
					"&%s->%s_val, (u_int *) &%s->%s_len",
					objname, name, objname, name);
			}
		}
		FUNC1(amax);
		if (!alt) {
			FUNC4(indent + 1, prefix, type);
		}
		break;
	case REL_ALIAS:
		FUNC3(indent, type);
		FUNC1(objname);
		break;
	}
	FUNC2(indent, brace);
}