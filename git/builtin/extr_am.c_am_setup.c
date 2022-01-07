
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {char* buf; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int argv; } ;
struct am_state {int threeway; int quiet; int signoff; int utf8; scalar_t__ allow_rerere_autoupdate; int keep; int message_id; int scissors; int last; int cur; scalar_t__ rebasing; TYPE_1__ git_apply_opts; int dir; } ;
typedef enum patch_format { ____Placeholder_patch_format } patch_format ;


 int BUG (char*) ;
 scalar_t__ EEXIST ;



 int REF_NO_DEREF ;
 scalar_t__ RERERE_AUTOUPDATE ;



 struct strbuf STRBUF_INIT ;
 int UPDATE_REFS_DIE_ON_ERR ;
 int _ (char*) ;
 int am_destroy (struct am_state*) ;
 int delete_ref (int *,char*,int *,int ) ;
 int detect_patch_format (char const**) ;
 int die (int ) ;
 int die_errno (int ,int ) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fprintf_ln (int ,int ) ;
 int get_oid (char*,struct object_id*) ;
 scalar_t__ mkdir (int ,int) ;
 char* oid_to_hex (struct object_id*) ;
 scalar_t__ split_mail (struct am_state*,int,char const**,int) ;
 int sq_quote_argv (struct strbuf*,int ) ;
 int stderr ;
 int strbuf_release (struct strbuf*) ;
 int update_ref (char*,char*,struct object_id*,int *,int ,int ) ;
 int write_state_bool (struct am_state*,char*,int) ;
 int write_state_count (struct am_state*,char*,int ) ;
 int write_state_text (struct am_state*,char*,char const*) ;

__attribute__((used)) static void am_setup(struct am_state *state, enum patch_format patch_format,
   const char **paths, int keep_cr)
{
 struct object_id curr_head;
 const char *str;
 struct strbuf sb = STRBUF_INIT;

 if (!patch_format)
  patch_format = detect_patch_format(paths);

 if (!patch_format) {
  fprintf_ln(stderr, _("Patch format detection failed."));
  exit(128);
 }

 if (mkdir(state->dir, 0777) < 0 && errno != EEXIST)
  die_errno(_("failed to create directory '%s'"), state->dir);
 delete_ref(((void*)0), "REBASE_HEAD", ((void*)0), REF_NO_DEREF);

 if (split_mail(state, patch_format, paths, keep_cr) < 0) {
  am_destroy(state);
  die(_("Failed to split patches."));
 }

 if (state->rebasing)
  state->threeway = 1;

 write_state_bool(state, "threeway", state->threeway);
 write_state_bool(state, "quiet", state->quiet);
 write_state_bool(state, "sign", state->signoff);
 write_state_bool(state, "utf8", state->utf8);

 if (state->allow_rerere_autoupdate)
  write_state_bool(state, "rerere-autoupdate",
    state->allow_rerere_autoupdate == RERERE_AUTOUPDATE);

 switch (state->keep) {
 case 133:
  str = "f";
  break;
 case 131:
  str = "t";
  break;
 case 132:
  str = "b";
  break;
 default:
  BUG("invalid value for state->keep");
 }

 write_state_text(state, "keep", str);
 write_state_bool(state, "messageid", state->message_id);

 switch (state->scissors) {
 case 128:
  str = "";
  break;
 case 130:
  str = "f";
  break;
 case 129:
  str = "t";
  break;
 default:
  BUG("invalid value for state->scissors");
 }
 write_state_text(state, "scissors", str);

 sq_quote_argv(&sb, state->git_apply_opts.argv);
 write_state_text(state, "apply-opt", sb.buf);

 if (state->rebasing)
  write_state_text(state, "rebasing", "");
 else
  write_state_text(state, "applying", "");

 if (!get_oid("HEAD", &curr_head)) {
  write_state_text(state, "abort-safety", oid_to_hex(&curr_head));
  if (!state->rebasing)
   update_ref("am", "ORIG_HEAD", &curr_head, ((void*)0), 0,
       UPDATE_REFS_DIE_ON_ERR);
 } else {
  write_state_text(state, "abort-safety", "");
  if (!state->rebasing)
   delete_ref(((void*)0), "ORIG_HEAD", ((void*)0), 0);
 }






 write_state_count(state, "next", state->cur);
 write_state_count(state, "last", state->last);

 strbuf_release(&sb);
}
