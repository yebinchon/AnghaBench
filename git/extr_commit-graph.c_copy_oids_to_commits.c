
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int nr; TYPE_3__** list; int alloc; } ;
struct TYPE_6__ {int nr; int * list; } ;
struct write_commit_graph_context {int progress; TYPE_2__ commits; scalar_t__ num_extra_edges; scalar_t__ split; TYPE_1__ oids; int r; scalar_t__ report_progress; } ;
struct TYPE_8__ {scalar_t__ graph_pos; int parents; } ;


 int ALLOC_GROW (TYPE_3__**,int,int ) ;
 scalar_t__ COMMIT_NOT_FROM_GRAPH ;
 int _ (char*) ;
 unsigned int commit_list_count (int ) ;
 int display_progress (int ,int) ;
 TYPE_3__* lookup_commit (int ,int *) ;
 scalar_t__ oideq (int *,int *) ;
 int parse_commit_no_graph (TYPE_3__*) ;
 int start_delayed_progress (int ,int) ;
 int stop_progress (int *) ;

__attribute__((used)) static void copy_oids_to_commits(struct write_commit_graph_context *ctx)
{
 uint32_t i;

 ctx->num_extra_edges = 0;
 if (ctx->report_progress)
  ctx->progress = start_delayed_progress(
   _("Finding extra edges in commit graph"),
   ctx->oids.nr);
 for (i = 0; i < ctx->oids.nr; i++) {
  unsigned int num_parents;

  display_progress(ctx->progress, i + 1);
  if (i > 0 && oideq(&ctx->oids.list[i - 1], &ctx->oids.list[i]))
   continue;

  ALLOC_GROW(ctx->commits.list, ctx->commits.nr + 1, ctx->commits.alloc);
  ctx->commits.list[ctx->commits.nr] = lookup_commit(ctx->r, &ctx->oids.list[i]);

  if (ctx->split &&
      ctx->commits.list[ctx->commits.nr]->graph_pos != COMMIT_NOT_FROM_GRAPH)
   continue;

  parse_commit_no_graph(ctx->commits.list[ctx->commits.nr]);

  num_parents = commit_list_count(ctx->commits.list[ctx->commits.nr]->parents);
  if (num_parents > 2)
   ctx->num_extra_edges += num_parents - 1;

  ctx->commits.nr++;
 }
 stop_progress(&ctx->progress);
}
