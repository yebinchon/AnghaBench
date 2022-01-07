
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_commit_graph_context {int num_commit_graphs_after; int new_base_graph; } ;
struct hashfile {int dummy; } ;


 int _ (char*) ;
 int error (int ) ;
 int write_graph_chunk_base_1 (struct hashfile*,int ) ;

__attribute__((used)) static int write_graph_chunk_base(struct hashfile *f,
      struct write_commit_graph_context *ctx)
{
 int num = write_graph_chunk_base_1(f, ctx->new_base_graph);

 if (num != ctx->num_commit_graphs_after - 1) {
  error(_("failed to write correct number of base graph ids"));
  return -1;
 }

 return 0;
}
