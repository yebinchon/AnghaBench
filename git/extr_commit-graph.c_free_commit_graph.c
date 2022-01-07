
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_graph {scalar_t__ graph_fd; struct commit_graph* filename; int * data; int data_len; } ;


 int close (scalar_t__) ;
 int free (struct commit_graph*) ;
 int munmap (void*,int ) ;

void free_commit_graph(struct commit_graph *g)
{
 if (!g)
  return;
 if (g->graph_fd >= 0) {
  munmap((void *)g->data, g->data_len);
  g->data = ((void*)0);
  close(g->graph_fd);
 }
 free(g->filename);
 free(g);
}
