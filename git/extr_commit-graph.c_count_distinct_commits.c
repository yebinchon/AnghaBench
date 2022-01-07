
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int nr; int * list; } ;
struct write_commit_graph_context {int progress; TYPE_1__ oids; int r; scalar_t__ split; scalar_t__ report_progress; } ;
struct commit {scalar_t__ graph_pos; } ;


 scalar_t__ COMMIT_NOT_FROM_GRAPH ;
 int QSORT (int *,int,int ) ;
 int _ (char*) ;
 int display_progress (int ,int) ;
 struct commit* lookup_commit (int ,int *) ;
 int oid_compare ;
 int oideq (int *,int *) ;
 int start_delayed_progress (int ,int) ;
 int stop_progress (int *) ;

__attribute__((used)) static uint32_t count_distinct_commits(struct write_commit_graph_context *ctx)
{
 uint32_t i, count_distinct = 1;

 if (ctx->report_progress)
  ctx->progress = start_delayed_progress(
   _("Counting distinct commits in commit graph"),
   ctx->oids.nr);
 display_progress(ctx->progress, 0);
 QSORT(ctx->oids.list, ctx->oids.nr, oid_compare);

 for (i = 1; i < ctx->oids.nr; i++) {
  display_progress(ctx->progress, i + 1);
  if (!oideq(&ctx->oids.list[i - 1], &ctx->oids.list[i])) {
   if (ctx->split) {
    struct commit *c = lookup_commit(ctx->r, &ctx->oids.list[i]);

    if (!c || c->graph_pos != COMMIT_NOT_FROM_GRAPH)
     continue;
   }

   count_distinct++;
  }
 }
 stop_progress(&ctx->progress);

 return count_distinct;
}
