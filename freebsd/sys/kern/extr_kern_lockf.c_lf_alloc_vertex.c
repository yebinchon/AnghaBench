
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct owner_graph {int dummy; } ;
struct lockf_entry {TYPE_1__* lf_owner; } ;
struct TYPE_2__ {int lo_vertex; } ;


 int graph_alloc_vertex (struct owner_graph*,TYPE_1__*) ;
 struct owner_graph lf_owner_graph ;

__attribute__((used)) static void
lf_alloc_vertex(struct lockf_entry *lock)
{
 struct owner_graph *g = &lf_owner_graph;

 if (!lock->lf_owner->lo_vertex)
  lock->lf_owner->lo_vertex =
   graph_alloc_vertex(g, lock->lf_owner);
}
