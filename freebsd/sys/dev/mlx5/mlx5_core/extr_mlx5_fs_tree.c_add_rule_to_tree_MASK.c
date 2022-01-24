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
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct mlx5_flow_rule {TYPE_1__ base; int /*<<< orphan*/  dest_attr; } ;
struct fs_fte {int /*<<< orphan*/  dests; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_flow_rule*,struct fs_fte*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mlx5_flow_rule *rule,
			     struct fs_fte *fte)
{
	char *dest_name;

	dest_name = FUNC2(&rule->dest_attr);
	FUNC1(&rule->base, &fte->base, dest_name, 1);
	/* re-add to list, since fs_add_node reset our list */
	FUNC4(&rule->base.list, &fte->dests);
	FUNC3(dest_name);
	FUNC0(rule, fte);
}