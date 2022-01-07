
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct owner_graph {int dummy; } ;
struct lockf_entry {TYPE_1__* lf_owner; } ;
struct lockf_edge {struct lockf_entry* le_to; struct lockf_entry* le_from; } ;
struct TYPE_2__ {int lo_vertex; } ;


 int LIST_REMOVE (struct lockf_edge*,int ) ;
 int graph_remove_edge (struct owner_graph*,int ,int ) ;
 int le_inlink ;
 int le_outlink ;
 int lf_free_edge (struct lockf_edge*) ;
 struct owner_graph lf_owner_graph ;

__attribute__((used)) static void
lf_remove_edge(struct lockf_edge *e)
{
 struct owner_graph *g = &lf_owner_graph;
 struct lockf_entry *x = e->le_from;
 struct lockf_entry *y = e->le_to;

 graph_remove_edge(g, x->lf_owner->lo_vertex, y->lf_owner->lo_vertex);
 LIST_REMOVE(e, le_outlink);
 LIST_REMOVE(e, le_inlink);
 e->le_from = ((void*)0);
 e->le_to = ((void*)0);
 lf_free_edge(e);
}
