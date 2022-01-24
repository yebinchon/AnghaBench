#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int v_type; } ;
typedef  TYPE_1__ value_t ;

/* Variables and functions */
 int NUMBER ; 
 scalar_t__ FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC4 (char*) ; 

int
FUNC5(char *s, char *v)
{
	value_t *p;

	p = FUNC4(s);
	if (p == 0)
		return (1);
	if (p->v_type&NUMBER)
		FUNC3(p, (char *)(intptr_t)FUNC0(v));
	else {
		if (FUNC2(s, "record") == 0)
			v = FUNC1(v);
		FUNC3(p, v);
	}
	return (0);
}