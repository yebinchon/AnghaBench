
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_commit_graph_context {scalar_t__ approx_nr_objects; scalar_t__ progress_done; int progress; scalar_t__ report_progress; } ;


 int FOR_EACH_OBJECT_PACK_ORDER ;
 int _ (char*) ;
 int add_packed_commits ;
 int display_progress (int ,scalar_t__) ;
 int for_each_packed_object (int ,struct write_commit_graph_context*,int ) ;
 int start_delayed_progress (int ,scalar_t__) ;
 int stop_progress (int *) ;

__attribute__((used)) static void fill_oids_from_all_packs(struct write_commit_graph_context *ctx)
{
 if (ctx->report_progress)
  ctx->progress = start_delayed_progress(
   _("Finding commits for commit graph among packed objects"),
   ctx->approx_nr_objects);
 for_each_packed_object(add_packed_commits, ctx,
          FOR_EACH_OBJECT_PACK_ORDER);
 if (ctx->progress_done < ctx->approx_nr_objects)
  display_progress(ctx->progress, ctx->approx_nr_objects);
 stop_progress(&ctx->progress);
}
