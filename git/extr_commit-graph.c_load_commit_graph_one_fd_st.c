
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct commit_graph {int dummy; } ;


 size_t GRAPH_MIN_SIZE ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int _ (char*) ;
 int close (int) ;
 int error (int ) ;
 int munmap (void*,size_t) ;
 struct commit_graph* parse_commit_graph (void*,int,size_t) ;
 void* xmmap (int *,size_t,int ,int ,int,int ) ;
 size_t xsize_t (int ) ;

struct commit_graph *load_commit_graph_one_fd_st(int fd, struct stat *st)
{
 void *graph_map;
 size_t graph_size;
 struct commit_graph *ret;

 graph_size = xsize_t(st->st_size);

 if (graph_size < GRAPH_MIN_SIZE) {
  close(fd);
  error(_("commit-graph file is too small"));
  return ((void*)0);
 }
 graph_map = xmmap(((void*)0), graph_size, PROT_READ, MAP_PRIVATE, fd, 0);
 ret = parse_commit_graph(graph_map, fd, graph_size);

 if (!ret) {
  munmap(graph_map, graph_size);
  close(fd);
 }

 return ret;
}
