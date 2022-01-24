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
struct owner_graph {int dummy; } ;
struct lockf_entry {TYPE_1__* lf_owner; } ;
struct lockf_edge {struct lockf_entry* le_to; struct lockf_entry* le_from; } ;
struct TYPE_2__ {int /*<<< orphan*/  lo_vertex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lockf_edge*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct owner_graph*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  le_inlink ; 
 int /*<<< orphan*/  le_outlink ; 
 int /*<<< orphan*/  FUNC2 (struct lockf_edge*) ; 
 struct owner_graph lf_owner_graph ; 

__attribute__((used)) static void
FUNC3(struct lockf_edge *e)
{
	struct owner_graph *g = &lf_owner_graph;
	struct lockf_entry *x = e->le_from;
	struct lockf_entry *y = e->le_to;

	FUNC1(g, x->lf_owner->lo_vertex, y->lf_owner->lo_vertex);
	FUNC0(e, le_outlink);
	FUNC0(e, le_inlink);
	e->le_from = NULL;
	e->le_to = NULL;
	FUNC2(e);
}