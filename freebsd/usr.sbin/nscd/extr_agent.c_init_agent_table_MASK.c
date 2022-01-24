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
struct agent_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct agent_table* (*) ()) ; 
 int /*<<< orphan*/  FUNC1 (struct agent_table* (*) ()) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct agent_table* FUNC3 (int,int) ; 

struct agent_table *
FUNC4(void)
{
   	struct agent_table	*retval;

	FUNC0(init_agent_table);
	retval = FUNC3(1, sizeof(*retval));
	FUNC2(retval != NULL);

	FUNC1(init_agent_table);
	return (retval);
}