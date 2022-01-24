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
struct TYPE_3__ {char* type; int rel; int /*<<< orphan*/  name; int /*<<< orphan*/  array_max; int /*<<< orphan*/  prefix; } ;
typedef  TYPE_1__ declaration ;

/* Variables and functions */
#define  REL_ALIAS 131 
#define  REL_ARRAY 130 
#define  REL_POINTER 129 
#define  REL_VECTOR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

void
FUNC5(const char *name, declaration *dec, int tab, const char *separator)
{
	char buf[8];	/* enough to hold "struct ", include NUL */
	const char *prefix;
	const char *type;

	if (FUNC3(dec->type, "void")) {
		return;
	}
	FUNC4(fout, tab);
	if (FUNC3(dec->type, name) && !dec->prefix) {
		FUNC0(fout, "struct ");
	}
	if (FUNC3(dec->type, "string")) {
		FUNC0(fout, "char *%s", dec->name);
	} else {
		prefix = "";
		if (FUNC3(dec->type, "bool")) {
			type = "bool_t";
		} else if (FUNC3(dec->type, "opaque")) {
			type = "char";
		} else {
			if (dec->prefix) {
				FUNC2(buf, "%s ", dec->prefix);
				prefix = buf;
			}
			type = dec->type;
		}
		switch (dec->rel) {
		case REL_ALIAS:
			FUNC0(fout, "%s%s %s", prefix, type, dec->name);
			break;
		case REL_VECTOR:
			FUNC0(fout, "%s%s %s[%s]", prefix, type, dec->name,
				dec->array_max);
			break;
		case REL_POINTER:
			FUNC0(fout, "%s%s *%s", prefix, type, dec->name);
			break;
		case REL_ARRAY:
			FUNC0(fout, "struct {\n");
			FUNC4(fout, tab);
			FUNC0(fout, "\tu_int %s_len;\n", dec->name);
			FUNC4(fout, tab);
			FUNC0(fout,
				"\t%s%s *%s_val;\n", prefix, type, dec->name);
			FUNC4(fout, tab);
			FUNC0(fout, "} %s", dec->name);
			break;
		}
	}
	FUNC1(separator, fout);
}