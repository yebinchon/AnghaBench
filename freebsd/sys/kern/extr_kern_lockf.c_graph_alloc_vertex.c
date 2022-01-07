
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owner_vertex {size_t v_order; struct lock_owner* v_owner; int v_inedges; int v_outedges; int v_gen; } ;
struct owner_graph {size_t g_size; size_t g_space; struct owner_vertex** g_vertices; int g_gen; void* g_indexbuf; } ;
struct lock_owner {int dummy; } ;


 int LIST_INIT (int *) ;
 int M_LOCKF ;
 int M_WAITOK ;
 int SX_XLOCKED ;
 int free (void*,int ) ;
 int lf_owner_graph_lock ;
 void* malloc (int,int ,int ) ;
 struct owner_vertex** realloc (struct owner_vertex**,int,int ,int ) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static struct owner_vertex *
graph_alloc_vertex(struct owner_graph *g, struct lock_owner *lo)
{
 struct owner_vertex *v;

 sx_assert(&lf_owner_graph_lock, SX_XLOCKED);

 v = malloc(sizeof(struct owner_vertex), M_LOCKF, M_WAITOK);
 if (g->g_size == g->g_space) {
  g->g_vertices = realloc(g->g_vertices,
      2 * g->g_space * sizeof(struct owner_vertex *),
      M_LOCKF, M_WAITOK);
  free(g->g_indexbuf, M_LOCKF);
  g->g_indexbuf = malloc(2 * g->g_space * sizeof(int),
      M_LOCKF, M_WAITOK);
  g->g_space = 2 * g->g_space;
 }
 v->v_order = g->g_size;
 v->v_gen = g->g_gen;
 g->g_vertices[g->g_size] = v;
 g->g_size++;

 LIST_INIT(&v->v_outedges);
 LIST_INIT(&v->v_inedges);
 v->v_owner = lo;

 return (v);
}
