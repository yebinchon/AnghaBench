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
struct commit_graph {struct commit_graph* base_graph; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct commit_graph*) ; 

__attribute__((used)) static void FUNC1(struct commit_graph *g)
{
	if (!g)
		return;

	FUNC1(g->base_graph);
	FUNC0(g);
}