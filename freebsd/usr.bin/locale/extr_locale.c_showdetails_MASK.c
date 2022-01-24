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
#define  TYPE_NUM 130 
#define  TYPE_STR 129 
#define  TYPE_UNQ 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char**,int*,int*,int*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ prt_categories ; 
 scalar_t__ prt_keywords ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC5(const char *kw)
{
	int	type, cat, tmpval, alloc;
	char	*kwval;

	if (FUNC2(kw, &kwval, &cat, &type, &alloc) == 0) {
		/*
		 * invalid keyword specified.
		 * XXX: any actions?
		 */
		FUNC0(stderr, "Unknown keyword: `%s'\n", kw);
		return;
	}

	if (prt_categories) {
		if (prt_keywords)
			FUNC4("%-20s ", FUNC3(cat));
		else
			FUNC4("%-20s\t%s\n", kw, FUNC3(cat));
	}

	if (prt_keywords) {
		switch (type) {
		case TYPE_NUM:
			tmpval = (char)*kwval;
			FUNC4("%s=%d\n", kw, tmpval);
			break;
		case TYPE_STR:
			FUNC4("%s=\"%s\"\n", kw, kwval);
			break;
		case TYPE_UNQ:
			FUNC4("%s=%s\n", kw, kwval);
			break;
		}
	}

	if (!prt_categories && !prt_keywords) {
		switch (type) {
		case TYPE_NUM:
			tmpval = (char)*kwval;
			FUNC4("%d\n", tmpval);
			break;
		case TYPE_STR:
		case TYPE_UNQ:
			FUNC4("%s\n", kwval);
			break;
		}
	}

	if (alloc)
		FUNC1(kwval);
}