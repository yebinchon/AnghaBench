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
struct TYPE_3__ {char* kb_name; int kb_unit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__** keyboard ; 
 int keyboards ; 
 scalar_t__ FUNC1 (char*,char*) ; 

int
FUNC2(char *driver, int unit, int index)
{
	int i;

	if ((index < 0) || (index >= keyboards))
		return (-1);

	for (i = index; i < keyboards; ++i) {
		if (keyboard[i] == NULL)
			continue;
		if (!FUNC0(keyboard[i]))
			continue;
		if (FUNC1("*", driver) && FUNC1(keyboard[i]->kb_name, driver))
			continue;
		if ((unit != -1) && (keyboard[i]->kb_unit != unit))
			continue;
		return (i);
	}

	return (-1);
}