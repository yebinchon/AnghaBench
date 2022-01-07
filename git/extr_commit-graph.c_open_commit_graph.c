
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int close (int) ;
 scalar_t__ fstat (int,struct stat*) ;
 int git_open (char const*) ;

int open_commit_graph(const char *graph_file, int *fd, struct stat *st)
{
 *fd = git_open(graph_file);
 if (*fd < 0)
  return 0;
 if (fstat(*fd, st)) {
  close(*fd);
  return 0;
 }
 return 1;
}
