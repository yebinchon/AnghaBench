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
struct commit_graph {scalar_t__ graph_fd; struct commit_graph* filename; int /*<<< orphan*/ * data; int /*<<< orphan*/  data_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct commit_graph*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 

void FUNC3(struct commit_graph *g)
{
	if (!g)
		return;
	if (g->graph_fd >= 0) {
		FUNC2((void *)g->data, g->data_len);
		g->data = NULL;
		FUNC0(g->graph_fd);
	}
	FUNC1(g->filename);
	FUNC1(g);
}