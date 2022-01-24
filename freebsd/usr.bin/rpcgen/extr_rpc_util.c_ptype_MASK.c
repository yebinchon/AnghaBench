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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 char const* FUNC1 (char const*) ; 
 int /*<<< orphan*/  fout ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

void
FUNC3(const char *prefix, const char *type, int follow)
{
	if (prefix != NULL) {
		if (FUNC2(prefix, "enum")) {
			FUNC0(fout, "enum ");
		} else {
			FUNC0(fout, "struct ");
		}
	}
	if (FUNC2(type, "bool")) {
		FUNC0(fout, "bool_t ");
	} else if (FUNC2(type, "string")) {
		FUNC0(fout, "char *");
	} else {
		FUNC0(fout, "%s ", follow ? FUNC1(type) : type);
	}
}