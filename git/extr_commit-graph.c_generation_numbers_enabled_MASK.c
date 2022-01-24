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
typedef  int uint32_t ;
struct repository {TYPE_1__* objects; } ;
struct commit_graph {scalar_t__ hash_len; scalar_t__ chunk_commit_data; int /*<<< orphan*/  num_commits; } ;
struct TYPE_2__ {struct commit_graph* commit_graph; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct repository*) ; 

int FUNC2(struct repository *r)
{
	uint32_t first_generation;
	struct commit_graph *g;
	if (!FUNC1(r))
	       return 0;

	g = r->objects->commit_graph;

	if (!g->num_commits)
		return 0;

	first_generation = FUNC0(g->chunk_commit_data +
				    g->hash_len + 8) >> 2;

	return !!first_generation;
}