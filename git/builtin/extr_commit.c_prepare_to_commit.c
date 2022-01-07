
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status {int display_comment_prefix; int use_color; int * fp; int change; scalar_t__ hints; } ;
struct strbuf {size_t len; scalar_t__ buf; } ;
struct stat {int dummy; } ;
struct pretty_print_context {void* output_encoding; int member_0; } ;
struct object_id {int dummy; } ;
struct ident_split {scalar_t__ mail_begin; scalar_t__ mail_end; scalar_t__ name_begin; scalar_t__ name_end; } ;
struct diff_flags {int override_submodule_config; int ignore_submodules; } ;
struct commit {int dummy; } ;
struct argv_array {int argv; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 scalar_t__ COMMIT_MSG_CLEANUP_ALL ;
 scalar_t__ COMMIT_MSG_CLEANUP_NONE ;
 scalar_t__ COMMIT_MSG_CLEANUP_SCISSORS ;
 int DATE_MODE (int ) ;
 struct diff_flags DIFF_FLAGS_INIT ;
 scalar_t__ FROM_CHERRY_PICK ;
 scalar_t__ FROM_COMMIT ;
 scalar_t__ FROM_MERGE ;
 int GIT_COLOR_NORMAL ;
 int IDENT_STRICT ;
 int NORMAL ;
 struct strbuf STRBUF_INIT ;
 char* _ (char*) ;
 int * active_cache ;
 int active_nr ;
 int adjust_comment_line_char (struct strbuf*) ;
 int allow_empty ;
 scalar_t__ amend ;
 int append_signoff (struct strbuf*,int ,int ) ;
 int argv_array_clear (struct argv_array*) ;
 int argv_array_pushf (struct argv_array*,char*,char const*) ;
 int assert_split_ident (struct ident_split*,struct strbuf*) ;
 scalar_t__ author_date_is_interesting () ;
 scalar_t__ auto_comment_line_char ;
 scalar_t__ ce_intent_to_add (int ) ;
 scalar_t__ cleanup_mode ;
 int comment_line_char ;
 int committer_ident_sufficiently_given () ;
 int determine_author_info (struct strbuf*) ;
 int die (char*,...) ;
 int die_errno (char*,...) ;
 int discard_cache () ;
 char* empty_amend_advice ;
 char* empty_cherry_pick_advice ;
 char* empty_cherry_pick_advice_multi ;
 char* empty_cherry_pick_advice_single ;
 int error (char*) ;
 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ find_hook (char*) ;
 char* fixup_message ;
 int * fopen_for_writing (int ) ;
 int format_commit_message (struct commit*,char*,struct strbuf*,struct pretty_print_context*) ;
 int fprintf (int *,char*) ;
 int fputs (char*,int *) ;
 scalar_t__ fwrite (scalar_t__,int,size_t,int *) ;
 void* get_commit_output_encoding () ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 char* git_committer_info (int ) ;
 char* git_path_cherry_pick_head (int ) ;
 int git_path_commit_editmsg () ;
 char* git_path_merge_head (int ) ;
 char* git_path_merge_msg (int ) ;
 char* git_path_squash_msg (int ) ;
 scalar_t__ have_option_m ;
 scalar_t__ ident_cmp (struct ident_split*,struct ident_split*) ;
 int ignore_non_trailer (scalar_t__,size_t) ;
 char* ignore_submodule_arg ;
 scalar_t__ include_status ;
 int index_differs_from (int ,char const*,struct diff_flags*,int) ;
 scalar_t__ is_a_merge (struct commit*) ;
 scalar_t__ isatty (int ) ;
 scalar_t__ launch_editor (int ,int *,int ) ;
 char* logfile ;
 struct commit* lookup_commit_reference_by_name (char*) ;
 int message ;
 int no_verify ;
 scalar_t__ read_cache () ;
 int read_cache_from (char const*) ;
 scalar_t__ run_commit_hook (scalar_t__,char const*,char*,int ,...) ;
 int run_status (int *,char const*,char const*,int,struct wt_status*) ;
 int sequencer_in_use ;
 int show_ident_date (struct ident_split*,int ) ;
 scalar_t__ signoff ;
 char* skip_blank_lines (char*) ;
 char* squash_message ;
 int stat (char*,struct stat*) ;
 int status_printf (struct wt_status*,int ,char*,int ) ;
 int status_printf_ln (struct wt_status*,int ,char*,char*,...) ;
 int * stderr ;
 int * stdout ;
 int strbuf_addbuf (struct strbuf*,int *) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 scalar_t__ strbuf_read (struct strbuf*,int ,int ) ;
 scalar_t__ strbuf_read_file (struct strbuf*,char*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_stripspace (struct strbuf*,int ) ;
 int strcmp (char*,char*) ;
 int string_list_clear (int *,int) ;
 char* strstr (int ,char*) ;
 char* template_file ;
 int the_repository ;
 scalar_t__ update_main_cache_tree (int ) ;
 scalar_t__ use_editor ;
 char* use_message ;
 int use_message_buffer ;
 scalar_t__ whence ;
 int wt_status_add_cut_line (int *) ;
 size_t wt_status_locate_end (scalar_t__,size_t) ;

__attribute__((used)) static int prepare_to_commit(const char *index_file, const char *prefix,
        struct commit *current_head,
        struct wt_status *s,
        struct strbuf *author_ident)
{
 struct stat statbuf;
 struct strbuf committer_ident = STRBUF_INIT;
 int committable;
 struct strbuf sb = STRBUF_INIT;
 const char *hook_arg1 = ((void*)0);
 const char *hook_arg2 = ((void*)0);
 int clean_message_contents = (cleanup_mode != COMMIT_MSG_CLEANUP_NONE);
 int old_display_comment_prefix;
 int merge_contains_scissors = 0;


 determine_author_info(author_ident);

 if (!no_verify && run_commit_hook(use_editor, index_file, "pre-commit", ((void*)0)))
  return 0;

 if (squash_message) {




  if (use_message && !strcmp(use_message, squash_message))
   strbuf_addstr(&sb, "squash! ");
  else {
   struct pretty_print_context ctx = {0};
   struct commit *c;
   c = lookup_commit_reference_by_name(squash_message);
   if (!c)
    die(_("could not lookup commit %s"), squash_message);
   ctx.output_encoding = get_commit_output_encoding();
   format_commit_message(c, "squash! %s\n\n", &sb,
           &ctx);
  }
 }

 if (have_option_m && !fixup_message) {
  strbuf_addbuf(&sb, &message);
  hook_arg1 = "message";
 } else if (logfile && !strcmp(logfile, "-")) {
  if (isatty(0))
   fprintf(stderr, _("(reading log message from standard input)\n"));
  if (strbuf_read(&sb, 0, 0) < 0)
   die_errno(_("could not read log from standard input"));
  hook_arg1 = "message";
 } else if (logfile) {
  if (strbuf_read_file(&sb, logfile, 0) < 0)
   die_errno(_("could not read log file '%s'"),
      logfile);
  hook_arg1 = "message";
 } else if (use_message) {
  char *buffer;
  buffer = strstr(use_message_buffer, "\n\n");
  if (buffer)
   strbuf_addstr(&sb, skip_blank_lines(buffer + 2));
  hook_arg1 = "commit";
  hook_arg2 = use_message;
 } else if (fixup_message) {
  struct pretty_print_context ctx = {0};
  struct commit *commit;
  commit = lookup_commit_reference_by_name(fixup_message);
  if (!commit)
   die(_("could not lookup commit %s"), fixup_message);
  ctx.output_encoding = get_commit_output_encoding();
  format_commit_message(commit, "fixup! %s\n\n",
          &sb, &ctx);
  if (have_option_m)
   strbuf_addbuf(&sb, &message);
  hook_arg1 = "message";
 } else if (!stat(git_path_merge_msg(the_repository), &statbuf)) {
  size_t merge_msg_start;





  if (!stat(git_path_squash_msg(the_repository), &statbuf)) {
   if (strbuf_read_file(&sb, git_path_squash_msg(the_repository), 0) < 0)
    die_errno(_("could not read SQUASH_MSG"));
   hook_arg1 = "squash";
  } else
   hook_arg1 = "merge";

  merge_msg_start = sb.len;
  if (strbuf_read_file(&sb, git_path_merge_msg(the_repository), 0) < 0)
   die_errno(_("could not read MERGE_MSG"));

  if (cleanup_mode == COMMIT_MSG_CLEANUP_SCISSORS &&
      wt_status_locate_end(sb.buf + merge_msg_start,
      sb.len - merge_msg_start) <
    sb.len - merge_msg_start)
   merge_contains_scissors = 1;
 } else if (!stat(git_path_squash_msg(the_repository), &statbuf)) {
  if (strbuf_read_file(&sb, git_path_squash_msg(the_repository), 0) < 0)
   die_errno(_("could not read SQUASH_MSG"));
  hook_arg1 = "squash";
 } else if (template_file) {
  if (strbuf_read_file(&sb, template_file, 0) < 0)
   die_errno(_("could not read '%s'"), template_file);
  hook_arg1 = "template";
  clean_message_contents = 0;
 }





 else if (whence == FROM_MERGE)
  hook_arg1 = "merge";
 else if (whence == FROM_CHERRY_PICK) {
  hook_arg1 = "commit";
  hook_arg2 = "CHERRY_PICK_HEAD";
 }

 if (squash_message) {





  hook_arg1 = "message";
  hook_arg2 = "";
 }

 s->fp = fopen_for_writing(git_path_commit_editmsg());
 if (s->fp == ((void*)0))
  die_errno(_("could not open '%s'"), git_path_commit_editmsg());


 old_display_comment_prefix = s->display_comment_prefix;
 s->display_comment_prefix = 1;





 s->hints = 0;

 if (clean_message_contents)
  strbuf_stripspace(&sb, 0);

 if (signoff)
  append_signoff(&sb, ignore_non_trailer(sb.buf, sb.len), 0);

 if (fwrite(sb.buf, 1, sb.len, s->fp) < sb.len)
  die_errno(_("could not write commit template"));

 if (auto_comment_line_char)
  adjust_comment_line_char(&sb);
 strbuf_release(&sb);


 strbuf_addstr(&committer_ident, git_committer_info(IDENT_STRICT));
 if (use_editor && include_status) {
  int ident_shown = 0;
  int saved_color_setting;
  struct ident_split ci, ai;

  if (whence != FROM_COMMIT) {
   if (cleanup_mode == COMMIT_MSG_CLEANUP_SCISSORS &&
    !merge_contains_scissors)
    wt_status_add_cut_line(s->fp);
   status_printf_ln(s, GIT_COLOR_NORMAL,
       whence == FROM_MERGE
    ? _("\n"
     "It looks like you may be committing a merge.\n"
     "If this is not correct, please remove the file\n"
     "	%s\n"
     "and try again.\n")
    : _("\n"
     "It looks like you may be committing a cherry-pick.\n"
     "If this is not correct, please remove the file\n"
     "	%s\n"
     "and try again.\n"),
    whence == FROM_MERGE ?
     git_path_merge_head(the_repository) :
     git_path_cherry_pick_head(the_repository));
  }

  fprintf(s->fp, "\n");
  if (cleanup_mode == COMMIT_MSG_CLEANUP_ALL)
   status_printf(s, GIT_COLOR_NORMAL,
    _("Please enter the commit message for your changes."
      " Lines starting\nwith '%c' will be ignored, and an empty"
      " message aborts the commit.\n"), comment_line_char);
  else if (cleanup_mode == COMMIT_MSG_CLEANUP_SCISSORS) {
   if (whence == FROM_COMMIT && !merge_contains_scissors)
    wt_status_add_cut_line(s->fp);
  } else
   status_printf(s, GIT_COLOR_NORMAL,
    _("Please enter the commit message for your changes."
      " Lines starting\n"
      "with '%c' will be kept; you may remove them"
      " yourself if you want to.\n"
      "An empty message aborts the commit.\n"), comment_line_char);







  assert_split_ident(&ai, author_ident);
  assert_split_ident(&ci, &committer_ident);

  if (ident_cmp(&ai, &ci))
   status_printf_ln(s, GIT_COLOR_NORMAL,
    _("%s"
    "Author:    %.*s <%.*s>"),
    ident_shown++ ? "" : "\n",
    (int)(ai.name_end - ai.name_begin), ai.name_begin,
    (int)(ai.mail_end - ai.mail_begin), ai.mail_begin);

  if (author_date_is_interesting())
   status_printf_ln(s, GIT_COLOR_NORMAL,
    _("%s"
    "Date:      %s"),
    ident_shown++ ? "" : "\n",
    show_ident_date(&ai, DATE_MODE(NORMAL)));

  if (!committer_ident_sufficiently_given())
   status_printf_ln(s, GIT_COLOR_NORMAL,
    _("%s"
    "Committer: %.*s <%.*s>"),
    ident_shown++ ? "" : "\n",
    (int)(ci.name_end - ci.name_begin), ci.name_begin,
    (int)(ci.mail_end - ci.mail_begin), ci.mail_begin);

  status_printf_ln(s, GIT_COLOR_NORMAL, "%s", "");

  saved_color_setting = s->use_color;
  s->use_color = 0;
  committable = run_status(s->fp, index_file, prefix, 1, s);
  s->use_color = saved_color_setting;
  string_list_clear(&s->change, 1);
 } else {
  struct object_id oid;
  const char *parent = "HEAD";

  if (!active_nr && read_cache() < 0)
   die(_("Cannot read index"));

  if (amend)
   parent = "HEAD^1";

  if (get_oid(parent, &oid)) {
   int i, ita_nr = 0;

   for (i = 0; i < active_nr; i++)
    if (ce_intent_to_add(active_cache[i]))
     ita_nr++;
   committable = active_nr - ita_nr > 0;
  } else {
   struct diff_flags flags = DIFF_FLAGS_INIT;
   flags.override_submodule_config = 1;
   if (ignore_submodule_arg &&
       !strcmp(ignore_submodule_arg, "all"))
    flags.ignore_submodules = 1;
   committable = index_differs_from(the_repository,
        parent, &flags, 1);
  }
 }
 strbuf_release(&committer_ident);

 fclose(s->fp);






 if (!committable && whence != FROM_MERGE && !allow_empty &&
     !(amend && is_a_merge(current_head))) {
  s->display_comment_prefix = old_display_comment_prefix;
  run_status(stdout, index_file, prefix, 0, s);
  if (amend)
   fputs(_(empty_amend_advice), stderr);
  else if (whence == FROM_CHERRY_PICK) {
   fputs(_(empty_cherry_pick_advice), stderr);
   if (!sequencer_in_use)
    fputs(_(empty_cherry_pick_advice_single), stderr);
   else
    fputs(_(empty_cherry_pick_advice_multi), stderr);
  }
  return 0;
 }

 if (!no_verify && find_hook("pre-commit")) {





  discard_cache();
 }
 read_cache_from(index_file);

 if (update_main_cache_tree(0)) {
  error(_("Error building trees"));
  return 0;
 }

 if (run_commit_hook(use_editor, index_file, "prepare-commit-msg",
       git_path_commit_editmsg(), hook_arg1, hook_arg2, ((void*)0)))
  return 0;

 if (use_editor) {
  struct argv_array env = ARGV_ARRAY_INIT;

  argv_array_pushf(&env, "GIT_INDEX_FILE=%s", index_file);
  if (launch_editor(git_path_commit_editmsg(), ((void*)0), env.argv)) {
   fprintf(stderr,
   _("Please supply the message using either -m or -F option.\n"));
   exit(1);
  }
  argv_array_clear(&env);
 }

 if (!no_verify &&
     run_commit_hook(use_editor, index_file, "commit-msg", git_path_commit_editmsg(), ((void*)0))) {
  return 0;
 }

 return 1;
}
