
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct write_commit_graph_context {scalar_t__ num_commit_graphs_before; scalar_t__ num_commit_graphs_after; struct commit_graph* new_base_graph; int base_graph_name; scalar_t__ new_num_commits_in_base; int progress; scalar_t__ report_progress; TYPE_2__* r; } ;
struct strbuf {int buf; } ;
struct commit_graph {int filename; scalar_t__ num_commits_in_base; scalar_t__ num_commits; struct commit_graph* base_graph; } ;
struct TYPE_4__ {TYPE_1__* objects; } ;
struct TYPE_3__ {struct commit_graph* commit_graph; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int merge_commit_graph (struct write_commit_graph_context*,struct commit_graph*) ;
 int sort_and_scan_merged_commits (struct write_commit_graph_context*) ;
 int start_delayed_progress (int ,int ) ;
 int stop_progress (int *) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int xstrdup (int ) ;

__attribute__((used)) static void merge_commit_graphs(struct write_commit_graph_context *ctx)
{
 struct commit_graph *g = ctx->r->objects->commit_graph;
 uint32_t current_graph_number = ctx->num_commit_graphs_before;
 struct strbuf progress_title = STRBUF_INIT;

 while (g && current_graph_number >= ctx->num_commit_graphs_after) {
  current_graph_number--;

  if (ctx->report_progress) {
   strbuf_addstr(&progress_title, _("Merging commit-graph"));
   ctx->progress = start_delayed_progress(progress_title.buf, 0);
  }

  merge_commit_graph(ctx, g);
  stop_progress(&ctx->progress);
  strbuf_release(&progress_title);

  g = g->base_graph;
 }

 if (g) {
  ctx->new_base_graph = g;
  ctx->new_num_commits_in_base = g->num_commits + g->num_commits_in_base;
 }

 if (ctx->new_base_graph)
  ctx->base_graph_name = xstrdup(ctx->new_base_graph->filename);

 sort_and_scan_merged_commits(ctx);
}
