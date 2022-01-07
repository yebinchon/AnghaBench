
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int time_t ;
struct write_commit_graph_context {size_t num_commit_graphs_after; size_t num_commit_graphs_before; int * commit_graph_filenames_before; } ;
struct utimbuf {int modtime; int actime; } ;
struct stat {int st_atime; } ;


 int stat (int ,struct stat*) ;
 int time (int *) ;
 int utime (int ,struct utimbuf*) ;

__attribute__((used)) static void mark_commit_graphs(struct write_commit_graph_context *ctx)
{
 uint32_t i;
 time_t now = time(((void*)0));

 for (i = ctx->num_commit_graphs_after - 1; i < ctx->num_commit_graphs_before; i++) {
  struct stat st;
  struct utimbuf updated_time;

  stat(ctx->commit_graph_filenames_before[i], &st);

  updated_time.actime = st.st_atime;
  updated_time.modtime = now;
  utime(ctx->commit_graph_filenames_before[i], &updated_time);
 }
}
