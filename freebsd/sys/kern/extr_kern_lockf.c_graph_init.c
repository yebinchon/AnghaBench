
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owner_vertex {int dummy; } ;
struct owner_graph {int g_space; scalar_t__ g_gen; void* g_indexbuf; scalar_t__ g_size; void* g_vertices; } ;


 int M_LOCKF ;
 int M_WAITOK ;
 void* malloc (int,int ,int ) ;

__attribute__((used)) static struct owner_graph *
graph_init(struct owner_graph *g)
{

 g->g_vertices = malloc(10 * sizeof(struct owner_vertex *),
     M_LOCKF, M_WAITOK);
 g->g_size = 0;
 g->g_space = 10;
 g->g_indexbuf = malloc(g->g_space * sizeof(int), M_LOCKF, M_WAITOK);
 g->g_gen = 0;

 return (g);
}
