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
 int PRINT_QUOTED ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(int pflags, char *name, char *value)
{
	int qc;
	char *p = value;
	char *param_name_value;

	/* An empty string needs quoting. */
	if (!*p) {
		FUNC0(&param_name_value, "{k:%s}{d:%s/\"\"}", name, name);
		FUNC3(param_name_value);
		FUNC1(param_name_value);
		return;
	}

	FUNC0(&param_name_value, "{:%s/%%s}", name);
	/*
	 * The value will be surrounded by quotes if it contains spaces
	 * or quotes.
	 */
	qc = FUNC2(p, '\'') ? '"'
		: FUNC2(p, '"') ? '\''
		: FUNC2(p, ' ') || FUNC2(p, '\t') ? '"'
		: 0;

	if (qc && pflags & PRINT_QUOTED)
		FUNC3("{P:/%c}", qc);

	FUNC3(param_name_value, value);

	FUNC1(param_name_value);

	if (qc && pflags & PRINT_QUOTED)
		FUNC3("{P:/%c}", qc);
}