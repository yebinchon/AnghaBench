
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct commit_graph {int filename; } ;


 struct commit_graph* load_commit_graph_one_fd_st (int,struct stat*) ;
 int open_commit_graph (char const*,int*,struct stat*) ;
 int xstrdup (char const*) ;

__attribute__((used)) static struct commit_graph *load_commit_graph_one(const char *graph_file)
{

 struct stat st;
 int fd;
 struct commit_graph *g;
 int open_ok = open_commit_graph(graph_file, &fd, &st);

 if (!open_ok)
  return ((void*)0);

 g = load_commit_graph_one_fd_st(fd, &st);

 if (g)
  g->filename = xstrdup(graph_file);

 return g;
}
