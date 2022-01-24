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
struct owner_vertex {int v_order; int /*<<< orphan*/  v_inedges; int /*<<< orphan*/  v_outedges; } ;
struct owner_graph {int g_size; struct owner_vertex** g_vertices; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_LOCKF ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  FUNC2 (struct owner_vertex*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lf_owner_graph_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct owner_graph *g, struct owner_vertex *v)
{
	struct owner_vertex *w;
	int i;

	FUNC3(&lf_owner_graph_lock, SX_XLOCKED);
	
	FUNC0(FUNC1(&v->v_outedges), ("Freeing vertex with edges"));
	FUNC0(FUNC1(&v->v_inedges), ("Freeing vertex with edges"));

	/*
	 * Remove from the graph's array and close up the gap,
	 * renumbering the other vertices.
	 */
	for (i = v->v_order + 1; i < g->g_size; i++) {
		w = g->g_vertices[i];
		w->v_order--;
		g->g_vertices[i - 1] = w;
	}
	g->g_size--;

	FUNC2(v, M_LOCKF);
}