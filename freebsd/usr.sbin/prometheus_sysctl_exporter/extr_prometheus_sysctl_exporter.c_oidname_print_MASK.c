#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t len; } ;
struct oidname {char* names; char* labels; TYPE_1__ oid; } ;
struct oidformat {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const) ; 
 scalar_t__ FUNC4 (struct oidformat const*) ; 
 scalar_t__ FUNC5 (struct oidformat const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 size_t FUNC7 (char const*,char*) ; 

__attribute__((used)) static void
FUNC8(const struct oidname *on, const struct oidformat *of,
    FILE *fp)
{
	const char *name, *label;
	size_t i;
	char separator;

	/* Print the name of the metric. */
	FUNC1(fp, "sysctl");
	name = on->names;
	label = on->labels;
	for (i = 0; i < on->oid.len; ++i) {
		if (*label == '\0') {
			FUNC2('_', fp);
			while (*name != '\0') {
				/* Map unsupported characters to underscores. */
				FUNC2(FUNC3(*name) ? *name : '_', fp);
				++name;
			}
		}
		name += FUNC6(name) + 1;
		label += FUNC6(label) + 1;
	}
	if (FUNC4(of))
		FUNC1(fp, "_celcius");
	else if (FUNC5(of))
		FUNC1(fp, "_seconds");

	/* Print the labels of the metric. */
	name = on->names;
	label = on->labels;
	separator = '{';
	for (i = 0; i < on->oid.len; ++i) {
		if (*label != '\0') {
			FUNC0(label[FUNC7(label,
			    "abcdefghijklmnopqrstuvwxyz"
			    "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
			    "0123456789_")] == '\0');
			FUNC1(fp, "%c%s=\"", separator, label);
			while (*name != '\0') {
				/* Escape backslashes and double quotes. */
				if (*name == '\\' || *name == '"')
					FUNC2('\\', fp);
				FUNC2(*name++, fp);
			}
			FUNC2('"', fp);
			separator = ',';
		}
		name += FUNC6(name) + 1;
		label += FUNC6(label) + 1;
	}
	if (separator != '{')
		FUNC2('}', fp);
}