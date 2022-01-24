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
struct tree {int dummy; } ;
struct repository {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parsed; } ;
struct commit {scalar_t__ graph_pos; struct tree* maybe_tree; TYPE_1__ object; } ;

/* Variables and functions */
 scalar_t__ COMMIT_NOT_FROM_GRAPH ; 
 struct tree* FUNC0 (struct repository*,struct commit const*) ; 

struct tree *FUNC1(struct repository *r,
				  const struct commit *commit)
{
	if (commit->maybe_tree || !commit->object.parsed)
		return commit->maybe_tree;

	if (commit->graph_pos != COMMIT_NOT_FROM_GRAPH)
		return FUNC0(r, commit);

	return NULL;
}