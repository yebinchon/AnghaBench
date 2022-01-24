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
struct attr_check {int nr; TYPE_1__* items; } ;
struct TYPE_2__ {char* value; int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ nul_term_line ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC6(struct attr_check *check, const char *file)
{
	int j;
	int cnt = check->nr;

	for (j = 0; j < cnt; j++) {
		const char *value = check->items[j].value;

		if (FUNC1(value))
			value = "set";
		else if (FUNC0(value))
			value = "unset";
		else if (FUNC2(value))
			value = "unspecified";

		if (nul_term_line) {
			FUNC4("%s%c" /* path */
			       "%s%c" /* attrname */
			       "%s%c" /* attrvalue */,
			       file, 0,
			       FUNC3(check->items[j].attr), 0, value, 0);
		} else {
			FUNC5(file, NULL, stdout, 0);
			FUNC4(": %s: %s\n",
			       FUNC3(check->items[j].attr), value);
		}
	}
}