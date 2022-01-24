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
struct commit_graph {int graph_fd; } ;

/* Variables and functions */
 struct commit_graph* FUNC0 (int,int) ; 

__attribute__((used)) static struct commit_graph *FUNC1(void)
{
	struct commit_graph *g = FUNC0(1, sizeof(*g));
	g->graph_fd = -1;

	return g;
}