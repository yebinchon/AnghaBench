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
struct mlx5_flow_namespace {int /*<<< orphan*/  dests_rw_sem; int /*<<< orphan*/  notifiers_rw_sem; } ;
typedef  int /*<<< orphan*/  rule_event_fn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_flow_namespace*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mlx5_flow_namespace *ns,
					 rule_event_fn add_rule_cb,
					 void *context)
{
	FUNC1(&ns->dests_rw_sem);
	FUNC0(&ns->notifiers_rw_sem);
	FUNC2(ns, add_rule_cb, context);
	FUNC3(&ns->notifiers_rw_sem);
	FUNC4(&ns->dests_rw_sem);
}