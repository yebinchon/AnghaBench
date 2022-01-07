
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct object_id {int dummy; } ;
struct rebase_options {int signoff; int * strategy_opts; int * strategy; int * gpg_sign_opt; int allow_rerere_autoupdate; int flags; struct object_id orig_head; int onto; int * head_name; } ;


 int REBASE_FORCE ;
 int REBASE_NO_QUIET ;
 int REBASE_VERBOSE ;
 int RERERE_AUTOUPDATE ;
 int RERERE_NOAUTOUPDATE ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int error (int ,int ) ;
 scalar_t__ file_exists (int ) ;
 int free (int *) ;
 scalar_t__ get_oid (int ,struct object_id*) ;
 int lookup_commit_or_die (struct object_id*,int ) ;
 scalar_t__ read_one (int ,struct strbuf*) ;
 scalar_t__ starts_with (int ,char*) ;
 int state_dir_path (char*,struct rebase_options*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strcmp (int ,char*) ;
 int warning (int ,int ) ;
 int * xstrdup (int ) ;

__attribute__((used)) static int read_basic_state(struct rebase_options *opts)
{
 struct strbuf head_name = STRBUF_INIT;
 struct strbuf buf = STRBUF_INIT;
 struct object_id oid;

 if (read_one(state_dir_path("head-name", opts), &head_name) ||
     read_one(state_dir_path("onto", opts), &buf))
  return -1;
 opts->head_name = starts_with(head_name.buf, "refs/") ?
  xstrdup(head_name.buf) : ((void*)0);
 strbuf_release(&head_name);
 if (get_oid(buf.buf, &oid))
  return error(_("could not get 'onto': '%s'"), buf.buf);
 opts->onto = lookup_commit_or_die(&oid, buf.buf);






 strbuf_reset(&buf);
 if (file_exists(state_dir_path("orig-head", opts))) {
  if (read_one(state_dir_path("orig-head", opts), &buf))
   return -1;
 } else if (read_one(state_dir_path("head", opts), &buf))
  return -1;
 if (get_oid(buf.buf, &opts->orig_head))
  return error(_("invalid orig-head: '%s'"), buf.buf);

 if (file_exists(state_dir_path("quiet", opts)))
  opts->flags &= ~REBASE_NO_QUIET;
 else
  opts->flags |= REBASE_NO_QUIET;

 if (file_exists(state_dir_path("verbose", opts)))
  opts->flags |= REBASE_VERBOSE;

 if (file_exists(state_dir_path("signoff", opts))) {
  opts->signoff = 1;
  opts->flags |= REBASE_FORCE;
 }

 if (file_exists(state_dir_path("allow_rerere_autoupdate", opts))) {
  strbuf_reset(&buf);
  if (read_one(state_dir_path("allow_rerere_autoupdate", opts),
       &buf))
   return -1;
  if (!strcmp(buf.buf, "--rerere-autoupdate"))
   opts->allow_rerere_autoupdate = RERERE_AUTOUPDATE;
  else if (!strcmp(buf.buf, "--no-rerere-autoupdate"))
   opts->allow_rerere_autoupdate = RERERE_NOAUTOUPDATE;
  else
   warning(_("ignoring invalid allow_rerere_autoupdate: "
      "'%s'"), buf.buf);
 }

 if (file_exists(state_dir_path("gpg_sign_opt", opts))) {
  strbuf_reset(&buf);
  if (read_one(state_dir_path("gpg_sign_opt", opts),
       &buf))
   return -1;
  free(opts->gpg_sign_opt);
  opts->gpg_sign_opt = xstrdup(buf.buf);
 }

 if (file_exists(state_dir_path("strategy", opts))) {
  strbuf_reset(&buf);
  if (read_one(state_dir_path("strategy", opts), &buf))
   return -1;
  free(opts->strategy);
  opts->strategy = xstrdup(buf.buf);
 }

 if (file_exists(state_dir_path("strategy_opts", opts))) {
  strbuf_reset(&buf);
  if (read_one(state_dir_path("strategy_opts", opts), &buf))
   return -1;
  free(opts->strategy_opts);
  opts->strategy_opts = xstrdup(buf.buf);
 }

 strbuf_release(&buf);

 return 0;
}
