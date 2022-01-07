
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int nr; int * list; int alloc; } ;
struct write_commit_graph_context {int progress; scalar_t__ check_oids; TYPE_2__ oids; int r; scalar_t__ report_progress; } ;
struct string_list {int nr; TYPE_3__* items; } ;
struct strbuf {int buf; } ;
struct object_id {int dummy; } ;
struct TYPE_4__ {int oid; } ;
struct commit {TYPE_1__ object; } ;
struct TYPE_6__ {int string; } ;


 int ALLOC_GROW (int *,int,int ) ;
 int Q_ (char*,char*,int) ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int display_progress (int ,int) ;
 int error (int ,int ) ;
 struct commit* lookup_commit_reference_gently (int ,struct object_id*,int) ;
 int oidcpy (int *,int *) ;
 int parse_oid_hex (int ,struct object_id*,char const**) ;
 int start_delayed_progress (int ,int) ;
 int stop_progress (int *) ;
 int strbuf_addf (struct strbuf*,int ,int) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int fill_oids_from_commit_hex(struct write_commit_graph_context *ctx,
         struct string_list *commit_hex)
{
 uint32_t i;
 struct strbuf progress_title = STRBUF_INIT;

 if (ctx->report_progress) {
  strbuf_addf(&progress_title,
       Q_("Finding commits for commit graph from %d ref",
          "Finding commits for commit graph from %d refs",
          commit_hex->nr),
       commit_hex->nr);
  ctx->progress = start_delayed_progress(
     progress_title.buf,
     commit_hex->nr);
 }
 for (i = 0; i < commit_hex->nr; i++) {
  const char *end;
  struct object_id oid;
  struct commit *result;

  display_progress(ctx->progress, i + 1);
  if (!parse_oid_hex(commit_hex->items[i].string, &oid, &end) &&
      (result = lookup_commit_reference_gently(ctx->r, &oid, 1))) {
   ALLOC_GROW(ctx->oids.list, ctx->oids.nr + 1, ctx->oids.alloc);
   oidcpy(&ctx->oids.list[ctx->oids.nr], &(result->object.oid));
   ctx->oids.nr++;
  } else if (ctx->check_oids) {
   error(_("invalid commit object id: %s"),
       commit_hex->items[i].string);
   return -1;
  }
 }
 stop_progress(&ctx->progress);
 strbuf_release(&progress_title);

 return 0;
}
