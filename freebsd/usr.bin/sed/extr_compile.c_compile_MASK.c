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
struct s_appends {int dummy; } ;
typedef  int /*<<< orphan*/  regmatch_t ;

/* Variables and functions */
 int appendnum ; 
 int /*<<< orphan*/ * appends ; 
 int /*<<< orphan*/ ** FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/ * match ; 
 int maxnsub ; 
 int /*<<< orphan*/  prog ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5(void)
{
	*FUNC0(&prog) = NULL;
	FUNC2(prog, NULL);
	FUNC4();
	if (appendnum == 0)
		appends = NULL;
	else if ((appends = FUNC3(sizeof(struct s_appends) * appendnum)) ==
	    NULL)
		FUNC1(1, "malloc");
	if ((match = FUNC3((maxnsub + 1) * sizeof(regmatch_t))) == NULL)
		FUNC1(1, "malloc");
}