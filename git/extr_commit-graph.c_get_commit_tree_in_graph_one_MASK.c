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
struct tree {int dummy; } ;
struct repository {int dummy; } ;
struct commit_graph {int dummy; } ;
struct commit {scalar_t__ graph_pos; struct tree* maybe_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ COMMIT_NOT_FROM_GRAPH ; 
 struct tree* FUNC1 (struct repository*,struct commit_graph*,struct commit*) ; 

__attribute__((used)) static struct tree *FUNC2(struct repository *r,
						 struct commit_graph *g,
						 const struct commit *c)
{
	if (c->maybe_tree)
		return c->maybe_tree;
	if (c->graph_pos == COMMIT_NOT_FROM_GRAPH)
		FUNC0("get_commit_tree_in_graph_one called from non-commit-graph commit");

	return FUNC1(r, g, (struct commit *)c);
}