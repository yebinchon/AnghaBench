
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct am_state {int threeway; int quiet; int signoff; int utf8; int message_id; int rebasing; int git_apply_opts; int scissors; int keep; scalar_t__ allow_rerere_autoupdate; int orig_commit; void* last; void* cur; } ;


 int BUG (char*) ;
 int KEEP_FALSE ;
 int KEEP_NON_PATCH ;
 int KEEP_TRUE ;
 scalar_t__ RERERE_AUTOUPDATE ;
 scalar_t__ RERERE_NOAUTOUPDATE ;
 int SCISSORS_FALSE ;
 int SCISSORS_TRUE ;
 int SCISSORS_UNSET ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int am_path (struct am_state*,char*) ;
 int argv_array_clear (int *) ;
 int die (int ,...) ;
 scalar_t__ file_exists (int ) ;
 scalar_t__ get_oid_hex (int ,int *) ;
 int oidclr (int *) ;
 scalar_t__ read_am_author_script (struct am_state*) ;
 int read_commit_msg (struct am_state*) ;
 scalar_t__ read_state_file (struct strbuf*,struct am_state*,char*,int) ;
 scalar_t__ sq_dequote_to_argv_array (int ,int *) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ strcmp (int ,char*) ;
 void* strtol (int ,int *,int) ;

__attribute__((used)) static void am_load(struct am_state *state)
{
 struct strbuf sb = STRBUF_INIT;

 if (read_state_file(&sb, state, "next", 1) < 0)
  BUG("state file 'next' does not exist");
 state->cur = strtol(sb.buf, ((void*)0), 10);

 if (read_state_file(&sb, state, "last", 1) < 0)
  BUG("state file 'last' does not exist");
 state->last = strtol(sb.buf, ((void*)0), 10);

 if (read_am_author_script(state) < 0)
  die(_("could not parse author script"));

 read_commit_msg(state);

 if (read_state_file(&sb, state, "original-commit", 1) < 0)
  oidclr(&state->orig_commit);
 else if (get_oid_hex(sb.buf, &state->orig_commit) < 0)
  die(_("could not parse %s"), am_path(state, "original-commit"));

 read_state_file(&sb, state, "threeway", 1);
 state->threeway = !strcmp(sb.buf, "t");

 read_state_file(&sb, state, "quiet", 1);
 state->quiet = !strcmp(sb.buf, "t");

 read_state_file(&sb, state, "sign", 1);
 state->signoff = !strcmp(sb.buf, "t");

 read_state_file(&sb, state, "utf8", 1);
 state->utf8 = !strcmp(sb.buf, "t");

 if (file_exists(am_path(state, "rerere-autoupdate"))) {
  read_state_file(&sb, state, "rerere-autoupdate", 1);
  state->allow_rerere_autoupdate = strcmp(sb.buf, "t") ?
   RERERE_NOAUTOUPDATE : RERERE_AUTOUPDATE;
 } else {
  state->allow_rerere_autoupdate = 0;
 }

 read_state_file(&sb, state, "keep", 1);
 if (!strcmp(sb.buf, "t"))
  state->keep = KEEP_TRUE;
 else if (!strcmp(sb.buf, "b"))
  state->keep = KEEP_NON_PATCH;
 else
  state->keep = KEEP_FALSE;

 read_state_file(&sb, state, "messageid", 1);
 state->message_id = !strcmp(sb.buf, "t");

 read_state_file(&sb, state, "scissors", 1);
 if (!strcmp(sb.buf, "t"))
  state->scissors = SCISSORS_TRUE;
 else if (!strcmp(sb.buf, "f"))
  state->scissors = SCISSORS_FALSE;
 else
  state->scissors = SCISSORS_UNSET;

 read_state_file(&sb, state, "apply-opt", 1);
 argv_array_clear(&state->git_apply_opts);
 if (sq_dequote_to_argv_array(sb.buf, &state->git_apply_opts) < 0)
  die(_("could not parse %s"), am_path(state, "apply-opt"));

 state->rebasing = !!file_exists(am_path(state, "rebasing"));

 strbuf_release(&sb);
}
