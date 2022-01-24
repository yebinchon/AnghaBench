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
struct agent_table {int agents_num; struct agent** agents; } ;
struct agent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void (*) (struct agent_table*,struct agent*)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct agent_table*,struct agent*)) ; 
 int /*<<< orphan*/  agent_cmp_func ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct agent**) ; 
 struct agent** FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct agent**,struct agent**,int) ; 
 int /*<<< orphan*/  FUNC6 (struct agent**,size_t,int,int /*<<< orphan*/ ) ; 

void
FUNC7(struct agent_table *at, struct agent *a)
{
	struct agent **new_agents;
    	size_t new_agents_num;

	FUNC0(register_agent);
	FUNC2(at != NULL);
	FUNC2(a != NULL);
	new_agents_num = at->agents_num + 1;
	new_agents = FUNC4(sizeof(*new_agents) *
		new_agents_num);
	FUNC2(new_agents != NULL);
	FUNC5(new_agents, at->agents, at->agents_num * sizeof(struct agent *));
	new_agents[new_agents_num - 1] = a;
	FUNC6(new_agents, new_agents_num, sizeof(struct agent *),
		agent_cmp_func);

	FUNC3(at->agents);
	at->agents = new_agents;
	at->agents_num = new_agents_num;
    	FUNC1(register_agent);
}