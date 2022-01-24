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
struct commit_graph {int dummy; } ;

/* Variables and functions */
 struct commit_graph* FUNC0 (struct repository*,char const*) ; 
 struct commit_graph* FUNC1 (struct repository*,char const*) ; 

struct commit_graph *FUNC2(struct repository *r, const char *obj_dir)
{
	struct commit_graph *g = FUNC1(r, obj_dir);

	if (!g)
		g = FUNC0(r, obj_dir);

	return g;
}