
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ nr; struct commit** list; int alloc; } ;
struct write_commit_graph_context {TYPE_1__ commits; int r; int progress; } ;
struct object_id {int dummy; } ;
struct commit_graph {scalar_t__ num_commits_in_base; scalar_t__ num_commits; } ;
struct commit {int dummy; } ;


 int ALLOC_GROW (struct commit**,scalar_t__,int ) ;
 int display_progress (int ,scalar_t__) ;
 int load_oid_from_graph (struct commit_graph*,scalar_t__,struct object_id*) ;
 struct commit* lookup_commit_reference_gently (int ,struct object_id*,int) ;

__attribute__((used)) static void merge_commit_graph(struct write_commit_graph_context *ctx,
          struct commit_graph *g)
{
 uint32_t i;
 uint32_t offset = g->num_commits_in_base;

 ALLOC_GROW(ctx->commits.list, ctx->commits.nr + g->num_commits, ctx->commits.alloc);

 for (i = 0; i < g->num_commits; i++) {
  struct object_id oid;
  struct commit *result;

  display_progress(ctx->progress, i + 1);

  load_oid_from_graph(g, i + offset, &oid);


  result = lookup_commit_reference_gently(ctx->r, &oid, 1);

  if (result) {
   ctx->commits.list[ctx->commits.nr] = result;
   ctx->commits.nr++;
  }
 }
}
