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
struct repository {int dummy; } ;
struct commit_graph {char const* obj_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 struct commit_graph* FUNC2 (char*) ; 

__attribute__((used)) static struct commit_graph *FUNC3(struct repository *r, const char *obj_dir)
{
	char *graph_name = FUNC1(obj_dir);
	struct commit_graph *g = FUNC2(graph_name);
	FUNC0(graph_name);

	if (g)
		g->obj_dir = obj_dir;

	return g;
}