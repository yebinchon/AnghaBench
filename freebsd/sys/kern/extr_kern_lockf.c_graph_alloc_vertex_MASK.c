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
struct owner_vertex {size_t v_order; struct lock_owner* v_owner; int /*<<< orphan*/  v_inedges; int /*<<< orphan*/  v_outedges; int /*<<< orphan*/  v_gen; } ;
struct owner_graph {size_t g_size; size_t g_space; struct owner_vertex** g_vertices; int /*<<< orphan*/  g_gen; void* g_indexbuf; } ;
struct lock_owner {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_LOCKF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lf_owner_graph_lock ; 
 void* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct owner_vertex** FUNC3 (struct owner_vertex**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct owner_vertex *
FUNC5(struct owner_graph *g, struct lock_owner *lo)
{
	struct owner_vertex *v;

	FUNC4(&lf_owner_graph_lock, SX_XLOCKED);

	v = FUNC2(sizeof(struct owner_vertex), M_LOCKF, M_WAITOK);
	if (g->g_size == g->g_space) {
		g->g_vertices = FUNC3(g->g_vertices,
		    2 * g->g_space * sizeof(struct owner_vertex *),
		    M_LOCKF, M_WAITOK);
		FUNC1(g->g_indexbuf, M_LOCKF);
		g->g_indexbuf = FUNC2(2 * g->g_space * sizeof(int),
		    M_LOCKF, M_WAITOK);
		g->g_space = 2 * g->g_space;
	}
	v->v_order = g->g_size;
	v->v_gen = g->g_gen;
	g->g_vertices[g->g_size] = v;
	g->g_size++;

	FUNC0(&v->v_outedges);
	FUNC0(&v->v_inedges);
	v->v_owner = lo;

	return (v);
}