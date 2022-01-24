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
struct TYPE_4__ {char* c_data; } ;
typedef  TYPE_1__ PLAN ;
typedef  int /*<<< orphan*/  OPTION ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char***) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 

PLAN *
FUNC2(OPTION *option, char ***argvp)
{
	char *pattern;
	PLAN *new;

	pattern = FUNC0(option, argvp);
	new = FUNC1(option);
	new->c_data = pattern;
	return new;
}