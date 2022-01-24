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
struct agent_table {int /*<<< orphan*/  agents_num; int /*<<< orphan*/  agents; } ;
struct agent {char* name; int type; } ;
typedef  enum agent_type { ____Placeholder_agent_type } agent_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct agent* (*) (struct agent_table*,char const*,int)) ; 
 int /*<<< orphan*/  FUNC1 (struct agent* (*) (struct agent_table*,char const*,int)) ; 
 int /*<<< orphan*/  agent_cmp_func ; 
 struct agent** FUNC2 (struct agent**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

struct agent *
FUNC3(struct agent_table *at, const char *name, enum agent_type type)
{
	struct agent **res;
	struct agent model, *model_p;

	FUNC0(find_agent);
	model.name = (char *)name;
	model.type = type;
	model_p = &model;
	res = FUNC2(&model_p, at->agents, at->agents_num,
		sizeof(struct agent *), agent_cmp_func);

	FUNC1(find_agent);
	return ( res == NULL ? NULL : *res);
}