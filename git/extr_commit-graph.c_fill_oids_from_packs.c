
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct write_commit_graph_context {size_t obj_dir; int progress; scalar_t__ progress_done; scalar_t__ report_progress; } ;
struct string_list {size_t nr; TYPE_1__* items; } ;
struct strbuf {int len; int buf; } ;
struct packed_git {int dummy; } ;
struct TYPE_2__ {int string; } ;


 int FOR_EACH_OBJECT_PACK_ORDER ;
 char* Q_ (char*,char*,size_t) ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int add_packed_commits ;
 struct packed_git* add_packed_git (int ,int,int) ;
 int close_pack (struct packed_git*) ;
 int error (int ,int ) ;
 int for_each_object_in_pack (struct packed_git*,int ,struct write_commit_graph_context*,int ) ;
 int free (struct packed_git*) ;
 scalar_t__ open_pack_index (struct packed_git*) ;
 int start_delayed_progress (int ,int ) ;
 int stop_progress (int *) ;
 int strbuf_addf (struct strbuf*,char*,size_t) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,int) ;

__attribute__((used)) static int fill_oids_from_packs(struct write_commit_graph_context *ctx,
    struct string_list *pack_indexes)
{
 uint32_t i;
 struct strbuf progress_title = STRBUF_INIT;
 struct strbuf packname = STRBUF_INIT;
 int dirlen;

 strbuf_addf(&packname, "%s/pack/", ctx->obj_dir);
 dirlen = packname.len;
 if (ctx->report_progress) {
  strbuf_addf(&progress_title,
       Q_("Finding commits for commit graph in %d pack",
          "Finding commits for commit graph in %d packs",
          pack_indexes->nr),
       pack_indexes->nr);
  ctx->progress = start_delayed_progress(progress_title.buf, 0);
  ctx->progress_done = 0;
 }
 for (i = 0; i < pack_indexes->nr; i++) {
  struct packed_git *p;
  strbuf_setlen(&packname, dirlen);
  strbuf_addstr(&packname, pack_indexes->items[i].string);
  p = add_packed_git(packname.buf, packname.len, 1);
  if (!p) {
   error(_("error adding pack %s"), packname.buf);
   return -1;
  }
  if (open_pack_index(p)) {
   error(_("error opening index for %s"), packname.buf);
   return -1;
  }
  for_each_object_in_pack(p, add_packed_commits, ctx,
     FOR_EACH_OBJECT_PACK_ORDER);
  close_pack(p);
  free(p);
 }

 stop_progress(&ctx->progress);
 strbuf_release(&progress_title);
 strbuf_release(&packname);

 return 0;
}
