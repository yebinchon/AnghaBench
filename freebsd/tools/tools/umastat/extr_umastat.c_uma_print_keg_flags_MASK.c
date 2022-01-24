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
struct uma_keg {int uk_flags; } ;
struct TYPE_2__ {int fi_flag; char* fi_name; } ;

/* Variables and functions */
 TYPE_1__* flaginfo ; 
 int flaginfo_count ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(struct uma_keg *ukp, const char *spaces)
{
	int count, i;

	if (!ukp->uk_flags) {
		FUNC0("%suk_flags = 0;\n", spaces);
		return;
	}

	FUNC0("%suk_flags = ", spaces);
	for (i = 0, count = 0; i < flaginfo_count; i++) {
		if (ukp->uk_flags & flaginfo[i].fi_flag) {
			if (count++ > 0)
				FUNC0(" | ");
			FUNC0("%s", flaginfo[i].fi_name);
		}

	}
	FUNC0(";\n");
}