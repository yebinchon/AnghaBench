
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_graph {int graph_fd; } ;


 struct commit_graph* xcalloc (int,int) ;

__attribute__((used)) static struct commit_graph *alloc_commit_graph(void)
{
 struct commit_graph *g = xcalloc(1, sizeof(*g));
 g->graph_fd = -1;

 return g;
}
