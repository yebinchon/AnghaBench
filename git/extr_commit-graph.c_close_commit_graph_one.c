
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_graph {struct commit_graph* base_graph; } ;


 int free_commit_graph (struct commit_graph*) ;

__attribute__((used)) static void close_commit_graph_one(struct commit_graph *g)
{
 if (!g)
  return;

 close_commit_graph_one(g->base_graph);
 free_commit_graph(g);
}
