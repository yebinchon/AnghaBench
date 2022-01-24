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
struct term_info {char* ti_name; char* ti_desc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,struct term_info*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char*) ; 

__attribute__((used)) static void
FUNC2(void)
{
	struct term_info ti;
	int i;

	for (i = 0; i < 10; i++) {
		if (FUNC0(i, &ti) == 0)
			break;
		FUNC1("%d: %s (%s)%s\n", i, ti.ti_name, ti.ti_desc,
		    i == 0 ? " (active)" : "");
	}
}