
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct strbuf {char* buf; } ;
struct TYPE_16__ {int argv; } ;
struct TYPE_13__ {int buf; scalar_t__ len; } ;
struct rebase_options {char* gpg_sign_opt; scalar_t__ allow_rerere_autoupdate; int state_dir; TYPE_8__ git_am_opts; int revisions; int head_name; int orig_head; TYPE_7__* restrict_revision; TYPE_5__ git_format_patch_opt; TYPE_4__* upstream; TYPE_2__* onto; scalar_t__ root; scalar_t__ action; } ;
struct child_process {int git_cmd; scalar_t__ out; scalar_t__ in; int args; } ;
struct TYPE_14__ {int oid; } ;
struct TYPE_15__ {TYPE_6__ object; } ;
struct TYPE_11__ {int oid; } ;
struct TYPE_12__ {TYPE_3__ object; } ;
struct TYPE_9__ {int oid; } ;
struct TYPE_10__ {TYPE_1__ object; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_TRUNC ;
 int O_WRONLY ;
 scalar_t__ RERERE_AUTOUPDATE ;
 scalar_t__ RERERE_NOAUTOUPDATE ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int argv_array_clear (int *) ;
 int argv_array_push (int *,char*) ;
 int argv_array_pushf (int *,char*,int ) ;
 int argv_array_pushl (int *,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,int *) ;
 int argv_array_pushv (int *,int ) ;
 int argv_array_split (int *,int ) ;
 int error (int ,int ) ;
 int error_errno (int ,char*) ;
 int free (char*) ;
 int git_path (char*) ;
 scalar_t__ is_directory (int ) ;
 int move_to_original_branch (struct rebase_options*) ;
 int oid_to_hex (int *) ;
 void* open (char*,int,...) ;
 int rebase_write_basic_state (struct rebase_options*) ;
 int reset_head (int *,char*,int ,int ,char*,int *) ;
 int resolvemsg ;
 int run_command (struct child_process*) ;
 int strbuf_addf (struct strbuf*,char*,int ,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (char*,scalar_t__) ;
 int unlink (char*) ;
 char* xstrdup (int ) ;

__attribute__((used)) static int run_am(struct rebase_options *opts)
{
 struct child_process am = CHILD_PROCESS_INIT;
 struct child_process format_patch = CHILD_PROCESS_INIT;
 struct strbuf revisions = STRBUF_INIT;
 int status;
 char *rebased_patches;

 am.git_cmd = 1;
 argv_array_push(&am.args, "am");

 if (opts->action && !strcmp("continue", opts->action)) {
  argv_array_push(&am.args, "--resolved");
  argv_array_pushf(&am.args, "--resolvemsg=%s", resolvemsg);
  if (opts->gpg_sign_opt)
   argv_array_push(&am.args, opts->gpg_sign_opt);
  status = run_command(&am);
  if (status)
   return status;

  return move_to_original_branch(opts);
 }
 if (opts->action && !strcmp("skip", opts->action)) {
  argv_array_push(&am.args, "--skip");
  argv_array_pushf(&am.args, "--resolvemsg=%s", resolvemsg);
  status = run_command(&am);
  if (status)
   return status;

  return move_to_original_branch(opts);
 }
 if (opts->action && !strcmp("show-current-patch", opts->action)) {
  argv_array_push(&am.args, "--show-current-patch");
  return run_command(&am);
 }

 strbuf_addf(&revisions, "%s...%s",
      oid_to_hex(opts->root ?

          &opts->onto->object.oid :
          &opts->upstream->object.oid),
      oid_to_hex(&opts->orig_head));

 rebased_patches = xstrdup(git_path("rebased-patches"));
 format_patch.out = open(rebased_patches,
    O_WRONLY | O_CREAT | O_TRUNC, 0666);
 if (format_patch.out < 0) {
  status = error_errno(_("could not open '%s' for writing"),
         rebased_patches);
  free(rebased_patches);
  argv_array_clear(&am.args);
  return status;
 }

 format_patch.git_cmd = 1;
 argv_array_pushl(&format_patch.args, "format-patch", "-k", "--stdout",
    "--full-index", "--cherry-pick", "--right-only",
    "--src-prefix=a/", "--dst-prefix=b/", "--no-renames",
    "--no-cover-letter", "--pretty=mboxrd", "--topo-order", ((void*)0));
 if (opts->git_format_patch_opt.len)
  argv_array_split(&format_patch.args,
     opts->git_format_patch_opt.buf);
 argv_array_push(&format_patch.args, revisions.buf);
 if (opts->restrict_revision)
  argv_array_pushf(&format_patch.args, "^%s",
     oid_to_hex(&opts->restrict_revision->object.oid));

 status = run_command(&format_patch);
 if (status) {
  unlink(rebased_patches);
  free(rebased_patches);
  argv_array_clear(&am.args);

  reset_head(&opts->orig_head, "checkout", opts->head_name, 0,
      "HEAD", ((void*)0));
  error(_("\ngit encountered an error while preparing the "
   "patches to replay\n"
   "these revisions:\n"
   "\n    %s\n\n"
   "As a result, git cannot rebase them."),
        opts->revisions);

  strbuf_release(&revisions);
  return status;
 }
 strbuf_release(&revisions);

 am.in = open(rebased_patches, O_RDONLY);
 if (am.in < 0) {
  status = error_errno(_("could not open '%s' for reading"),
         rebased_patches);
  free(rebased_patches);
  argv_array_clear(&am.args);
  return status;
 }

 argv_array_pushv(&am.args, opts->git_am_opts.argv);
 argv_array_push(&am.args, "--rebasing");
 argv_array_pushf(&am.args, "--resolvemsg=%s", resolvemsg);
 argv_array_push(&am.args, "--patch-format=mboxrd");
 if (opts->allow_rerere_autoupdate == RERERE_AUTOUPDATE)
  argv_array_push(&am.args, "--rerere-autoupdate");
 else if (opts->allow_rerere_autoupdate == RERERE_NOAUTOUPDATE)
  argv_array_push(&am.args, "--no-rerere-autoupdate");
 if (opts->gpg_sign_opt)
  argv_array_push(&am.args, opts->gpg_sign_opt);
 status = run_command(&am);
 unlink(rebased_patches);
 free(rebased_patches);

 if (!status) {
  return move_to_original_branch(opts);
 }

 if (is_directory(opts->state_dir))
  rebase_write_basic_state(opts);

 return status;
}
