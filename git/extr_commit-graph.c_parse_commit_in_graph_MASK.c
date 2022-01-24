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
struct repository {TYPE_1__* objects; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  commit_graph; } ;

/* Variables and functions */
 int FUNC0 (struct repository*,int /*<<< orphan*/ ,struct commit*) ; 
 int /*<<< orphan*/  FUNC1 (struct repository*) ; 

int FUNC2(struct repository *r, struct commit *item)
{
	if (!FUNC1(r))
		return 0;
	return FUNC0(r, r->objects->commit_graph, item);
}