
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {char* buf; } ;
struct checkout_opts {char* new_branch; char* new_orphan_branch; scalar_t__ force_detach; int quiet; scalar_t__ branch_exists; scalar_t__ new_branch_force; int track; int new_branch_log; } ;
struct branch_info {char* name; char* path; TYPE_2__* commit; } ;
struct TYPE_3__ {int oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 int REF_NO_DEREF ;
 struct strbuf STRBUF_INIT ;
 int UPDATE_REFS_DIE_ON_ERR ;
 char* _ (char*) ;
 scalar_t__ advice_detached_head ;
 int create_branch (int ,char*,char*,int,int,int ,int ,int ) ;
 scalar_t__ create_symref (char*,char*,char*) ;
 int delete_reflog (char*) ;
 int describe_detached_head (char*,TYPE_2__*) ;
 int detach_advice (char*) ;
 int die (char*) ;
 int fprintf (int ,char*,char*,...) ;
 int free (char*) ;
 char* getenv (char*) ;
 char* mkpathdup (char*,char*) ;
 char* oid_to_hex (int *) ;
 int ref_exists (char*) ;
 scalar_t__ reflog_exists (char*) ;
 int remove_branch_state (int ,int) ;
 int report_tracking (struct branch_info*) ;
 int safe_create_reflog (char*,int,struct strbuf*) ;
 int setup_branch_path (struct branch_info*) ;
 int should_autocreate_reflog (char*) ;
 int stderr ;
 int strbuf_addf (struct strbuf*,char*,char const*,char*) ;
 int strbuf_insert (struct strbuf*,int ,char const*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (char*,char*) ;
 int strlen (char const*) ;
 int the_repository ;
 int update_ref (char*,char*,int *,int *,int ,int ) ;

__attribute__((used)) static void update_refs_for_switch(const struct checkout_opts *opts,
       struct branch_info *old_branch_info,
       struct branch_info *new_branch_info)
{
 struct strbuf msg = STRBUF_INIT;
 const char *old_desc, *reflog_msg;
 if (opts->new_branch) {
  if (opts->new_orphan_branch) {
   char *refname;

   refname = mkpathdup("refs/heads/%s", opts->new_orphan_branch);
   if (opts->new_branch_log &&
       !should_autocreate_reflog(refname)) {
    int ret;
    struct strbuf err = STRBUF_INIT;

    ret = safe_create_reflog(refname, 1, &err);
    if (ret) {
     fprintf(stderr, _("Can not do reflog for '%s': %s\n"),
      opts->new_orphan_branch, err.buf);
     strbuf_release(&err);
     free(refname);
     return;
    }
    strbuf_release(&err);
   }
   free(refname);
  }
  else
   create_branch(the_repository,
          opts->new_branch, new_branch_info->name,
          opts->new_branch_force ? 1 : 0,
          opts->new_branch_force ? 1 : 0,
          opts->new_branch_log,
          opts->quiet,
          opts->track);
  new_branch_info->name = opts->new_branch;
  setup_branch_path(new_branch_info);
 }

 old_desc = old_branch_info->name;
 if (!old_desc && old_branch_info->commit)
  old_desc = oid_to_hex(&old_branch_info->commit->object.oid);

 reflog_msg = getenv("GIT_REFLOG_ACTION");
 if (!reflog_msg)
  strbuf_addf(&msg, "checkout: moving from %s to %s",
   old_desc ? old_desc : "(invalid)", new_branch_info->name);
 else
  strbuf_insert(&msg, 0, reflog_msg, strlen(reflog_msg));

 if (!strcmp(new_branch_info->name, "HEAD") && !new_branch_info->path && !opts->force_detach) {

 } else if (opts->force_detach || !new_branch_info->path) {
  update_ref(msg.buf, "HEAD", &new_branch_info->commit->object.oid, ((void*)0),
      REF_NO_DEREF, UPDATE_REFS_DIE_ON_ERR);
  if (!opts->quiet) {
   if (old_branch_info->path &&
       advice_detached_head && !opts->force_detach)
    detach_advice(new_branch_info->name);
   describe_detached_head(_("HEAD is now at"), new_branch_info->commit);
  }
 } else if (new_branch_info->path) {
  if (create_symref("HEAD", new_branch_info->path, msg.buf) < 0)
   die(_("unable to update HEAD"));
  if (!opts->quiet) {
   if (old_branch_info->path && !strcmp(new_branch_info->path, old_branch_info->path)) {
    if (opts->new_branch_force)
     fprintf(stderr, _("Reset branch '%s'\n"),
      new_branch_info->name);
    else
     fprintf(stderr, _("Already on '%s'\n"),
      new_branch_info->name);
   } else if (opts->new_branch) {
    if (opts->branch_exists)
     fprintf(stderr, _("Switched to and reset branch '%s'\n"), new_branch_info->name);
    else
     fprintf(stderr, _("Switched to a new branch '%s'\n"), new_branch_info->name);
   } else {
    fprintf(stderr, _("Switched to branch '%s'\n"),
     new_branch_info->name);
   }
  }
  if (old_branch_info->path && old_branch_info->name) {
   if (!ref_exists(old_branch_info->path) && reflog_exists(old_branch_info->path))
    delete_reflog(old_branch_info->path);
  }
 }
 remove_branch_state(the_repository, !opts->quiet);
 strbuf_release(&msg);
 if (!opts->quiet &&
     (new_branch_info->path || (!opts->force_detach && !strcmp(new_branch_info->name, "HEAD"))))
  report_tracking(new_branch_info);
}
