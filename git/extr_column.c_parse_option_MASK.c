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
struct colopt {char* member_0; int member_2; int mask; char* name; unsigned int value; int /*<<< orphan*/  member_1; } ;

/* Variables and functions */
 int FUNC0 (struct colopt*) ; 
 int /*<<< orphan*/  COL_AUTO ; 
 int /*<<< orphan*/  COL_COLUMN ; 
 int /*<<< orphan*/  COL_DENSE ; 
 int /*<<< orphan*/  COL_DISABLED ; 
 int /*<<< orphan*/  COL_ENABLED ; 
#define  COL_ENABLE_MASK 129 
#define  COL_LAYOUT_MASK 128 
 int /*<<< orphan*/  COL_PLAIN ; 
 int /*<<< orphan*/  COL_ROW ; 
 int ENABLE_SET ; 
 int LAYOUT_SET ; 
 int FUNC1 (char*,char const*) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC4(const char *arg, int len, unsigned int *colopts,
			int *group_set)
{
	struct colopt opts[] = {
		{ "always", COL_ENABLED,  COL_ENABLE_MASK },
		{ "never",  COL_DISABLED, COL_ENABLE_MASK },
		{ "auto",   COL_AUTO,     COL_ENABLE_MASK },
		{ "plain",  COL_PLAIN,    COL_LAYOUT_MASK },
		{ "column", COL_COLUMN,   COL_LAYOUT_MASK },
		{ "row",    COL_ROW,      COL_LAYOUT_MASK },
		{ "dense",  COL_DENSE,    0 },
	};
	int i;

	for (i = 0; i < FUNC0(opts); i++) {
		int set = 1, arg_len = len, name_len;
		const char *arg_str = arg;

		if (!opts[i].mask) {
			if (arg_len > 2 && !FUNC3(arg_str, "no", 2)) {
				arg_str += 2;
				arg_len -= 2;
				set = 0;
			}
		}

		name_len = FUNC2(opts[i].name);
		if (arg_len != name_len ||
		    FUNC3(arg_str, opts[i].name, name_len))
			continue;

		switch (opts[i].mask) {
		case COL_ENABLE_MASK:
			*group_set |= ENABLE_SET;
			break;
		case COL_LAYOUT_MASK:
			*group_set |= LAYOUT_SET;
			break;
		}

		if (opts[i].mask)
			*colopts = (*colopts & ~opts[i].mask) | opts[i].value;
		else {
			if (set)
				*colopts |= opts[i].value;
			else
				*colopts &= ~opts[i].value;
		}
		return 0;
	}

	return FUNC1("unsupported option '%s'", arg);
}