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
struct TYPE_3__ {int /*<<< orphan*/  str; struct TYPE_3__* next; } ;
typedef  TYPE_1__ strlst_t ;

/* Variables and functions */
 int /*<<< orphan*/  strcmp (int /*<<< orphan*/ ,char*) ; 

int
in_list(strlst_t **listp, char *str)
{
	strlst_t *p1;
	for (p1 = *listp; p1 != NULL; p1 = p1->next)
		if (!strcmp(p1->str, str))
			return 1;
	return 0;
}