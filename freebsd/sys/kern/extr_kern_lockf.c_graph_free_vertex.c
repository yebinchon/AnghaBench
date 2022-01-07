
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owner_vertex {int v_order; int v_inedges; int v_outedges; } ;
struct owner_graph {int g_size; struct owner_vertex** g_vertices; } ;


 int KASSERT (int ,char*) ;
 int LIST_EMPTY (int *) ;
 int M_LOCKF ;
 int SX_XLOCKED ;
 int free (struct owner_vertex*,int ) ;
 int lf_owner_graph_lock ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static void
graph_free_vertex(struct owner_graph *g, struct owner_vertex *v)
{
 struct owner_vertex *w;
 int i;

 sx_assert(&lf_owner_graph_lock, SX_XLOCKED);

 KASSERT(LIST_EMPTY(&v->v_outedges), ("Freeing vertex with edges"));
 KASSERT(LIST_EMPTY(&v->v_inedges), ("Freeing vertex with edges"));





 for (i = v->v_order + 1; i < g->g_size; i++) {
  w = g->g_vertices[i];
  w->v_order--;
  g->g_vertices[i - 1] = w;
 }
 g->g_size--;

 free(v, M_LOCKF);
}
