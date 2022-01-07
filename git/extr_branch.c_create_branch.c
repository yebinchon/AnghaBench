
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {char const* buf; } ;
struct repository {int dummy; } ;
struct ref_transaction {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;
typedef enum branch_track { ____Placeholder_branch_track } branch_track ;


 int BRANCH_TRACK_EXPLICIT ;
 int BRANCH_TRACK_OVERRIDE ;
 int LOG_REFS_NORMAL ;
 struct strbuf STRBUF_INIT ;
 char* _ (char*) ;
 scalar_t__ advice_set_upstream_failure ;
 int advise (char*) ;
 int die (char*,char const*) ;
 int dwim_ref (char const*,int ,struct object_id*,char**) ;
 int error (char*,char const*) ;
 int exit (int) ;
 int free (char*) ;
 scalar_t__ get_oid_mb (char const*,struct object_id*) ;
 int log_all_ref_updates ;
 struct commit* lookup_commit_reference (struct repository*,struct object_id*) ;
 int null_oid ;
 int oidcpy (struct object_id*,int *) ;
 struct ref_transaction* ref_transaction_begin (struct strbuf*) ;
 scalar_t__ ref_transaction_commit (struct ref_transaction*,struct strbuf*) ;
 int ref_transaction_free (struct ref_transaction*) ;
 scalar_t__ ref_transaction_update (struct ref_transaction*,char const*,struct object_id*,int *,int ,char*,struct strbuf*) ;
 int setup_tracking (char const*,char*,int,int) ;
 int starts_with (char*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int strlen (char const*) ;
 char* upstream_advice ;
 char* upstream_missing ;
 char* upstream_not_branch ;
 scalar_t__ validate_branchname (char const*,struct strbuf*) ;
 scalar_t__ validate_new_branchname (char const*,struct strbuf*,int) ;
 int validate_remote_tracking_branch (char*) ;
 char* xstrfmt (char*,char const*) ;

void create_branch(struct repository *r,
     const char *name, const char *start_name,
     int force, int clobber_head_ok, int reflog,
     int quiet, enum branch_track track)
{
 struct commit *commit;
 struct object_id oid;
 char *real_ref;
 struct strbuf ref = STRBUF_INIT;
 int forcing = 0;
 int dont_change_ref = 0;
 int explicit_tracking = 0;

 if (track == BRANCH_TRACK_EXPLICIT || track == BRANCH_TRACK_OVERRIDE)
  explicit_tracking = 1;

 if ((track == BRANCH_TRACK_OVERRIDE || clobber_head_ok)
     ? validate_branchname(name, &ref)
     : validate_new_branchname(name, &ref, force)) {
  if (!force)
   dont_change_ref = 1;
  else
   forcing = 1;
 }

 real_ref = ((void*)0);
 if (get_oid_mb(start_name, &oid)) {
  if (explicit_tracking) {
   if (advice_set_upstream_failure) {
    error(_(upstream_missing), start_name);
    advise(_(upstream_advice));
    exit(1);
   }
   die(_(upstream_missing), start_name);
  }
  die(_("Not a valid object name: '%s'."), start_name);
 }

 switch (dwim_ref(start_name, strlen(start_name), &oid, &real_ref)) {
 case 0:

  if (explicit_tracking)
   die(_(upstream_not_branch), start_name);
  break;
 case 1:

  if (!starts_with(real_ref, "refs/heads/") &&
      validate_remote_tracking_branch(real_ref)) {
   if (explicit_tracking)
    die(_(upstream_not_branch), start_name);
   else
    real_ref = ((void*)0);
  }
  break;
 default:
  die(_("Ambiguous object name: '%s'."), start_name);
  break;
 }

 if ((commit = lookup_commit_reference(r, &oid)) == ((void*)0))
  die(_("Not a valid branch point: '%s'."), start_name);
 oidcpy(&oid, &commit->object.oid);

 if (reflog)
  log_all_ref_updates = LOG_REFS_NORMAL;

 if (!dont_change_ref) {
  struct ref_transaction *transaction;
  struct strbuf err = STRBUF_INIT;
  char *msg;

  if (forcing)
   msg = xstrfmt("branch: Reset to %s", start_name);
  else
   msg = xstrfmt("branch: Created from %s", start_name);

  transaction = ref_transaction_begin(&err);
  if (!transaction ||
      ref_transaction_update(transaction, ref.buf,
        &oid, forcing ? ((void*)0) : &null_oid,
        0, msg, &err) ||
      ref_transaction_commit(transaction, &err))
   die("%s", err.buf);
  ref_transaction_free(transaction);
  strbuf_release(&err);
  free(msg);
 }

 if (real_ref && track)
  setup_tracking(ref.buf + 11, real_ref, track, quiet);

 strbuf_release(&ref);
 free(real_ref);
}
