
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nr; int * list; } ;
struct write_commit_graph_context {void* progress; TYPE_1__ oids; int r; scalar_t__ report_progress; scalar_t__ split; } ;
struct TYPE_4__ {int flags; } ;
struct commit {scalar_t__ graph_pos; TYPE_2__ object; } ;


 scalar_t__ COMMIT_NOT_FROM_GRAPH ;
 int REACHABLE ;
 int _ (char*) ;
 int add_missing_parents (struct write_commit_graph_context*,struct commit*) ;
 int display_progress (void*,int) ;
 struct commit* lookup_commit (int ,int *) ;
 int parse_commit (struct commit*) ;
 int parse_commit_no_graph (struct commit*) ;
 void* start_delayed_progress (int ,int) ;
 int stop_progress (void**) ;

__attribute__((used)) static void close_reachable(struct write_commit_graph_context *ctx)
{
 int i;
 struct commit *commit;

 if (ctx->report_progress)
  ctx->progress = start_delayed_progress(
     _("Loading known commits in commit graph"),
     ctx->oids.nr);
 for (i = 0; i < ctx->oids.nr; i++) {
  display_progress(ctx->progress, i + 1);
  commit = lookup_commit(ctx->r, &ctx->oids.list[i]);
  if (commit)
   commit->object.flags |= REACHABLE;
 }
 stop_progress(&ctx->progress);






 if (ctx->report_progress)
  ctx->progress = start_delayed_progress(
     _("Expanding reachable commits in commit graph"),
     0);
 for (i = 0; i < ctx->oids.nr; i++) {
  display_progress(ctx->progress, i + 1);
  commit = lookup_commit(ctx->r, &ctx->oids.list[i]);

  if (!commit)
   continue;
  if (ctx->split) {
   if (!parse_commit(commit) &&
       commit->graph_pos == COMMIT_NOT_FROM_GRAPH)
    add_missing_parents(ctx, commit);
  } else if (!parse_commit_no_graph(commit))
   add_missing_parents(ctx, commit);
 }
 stop_progress(&ctx->progress);

 if (ctx->report_progress)
  ctx->progress = start_delayed_progress(
     _("Clearing commit marks in commit graph"),
     ctx->oids.nr);
 for (i = 0; i < ctx->oids.nr; i++) {
  display_progress(ctx->progress, i + 1);
  commit = lookup_commit(ctx->r, &ctx->oids.list[i]);

  if (commit)
   commit->object.flags &= ~REACHABLE;
 }
 stop_progress(&ctx->progress);
}
