
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {char* path; } ;
struct strbuf {int buf; } ;
struct object_id {int dummy; } ;
struct commit {int dummy; } ;


 int DEFAULT_ABBREV ;


 unsigned int INTERPRET_BRANCH_LOCAL ;
 unsigned int INTERPRET_BRANCH_REMOTE ;
 int REF_ISBROKEN ;
 int REF_ISSYMREF ;
 int REF_NO_DEREF ;
 int RESOLVE_REF_ALLOW_BAD_NAME ;
 int RESOLVE_REF_NO_RECURSE ;
 int RESOLVE_REF_READING ;
 struct strbuf STRBUF_INIT ;
 char* _ (char*) ;
 scalar_t__ check_branch_commit (int ,char*,struct object_id*,struct commit*,int,int) ;
 int delete_branch_config (int ) ;
 scalar_t__ delete_ref (int *,char*,struct object_id*,int ) ;
 int die (char*) ;
 int error (char*,int ,...) ;
 struct worktree* find_shared_symref (char*,char*) ;
 char* find_unique_abbrev (struct object_id*,int ) ;
 int free (char*) ;
 int head_oid ;
 scalar_t__ is_null_oid (struct object_id*) ;
 struct commit* lookup_commit_reference (int ,int *) ;
 char* mkpathdup (char const*,int ) ;
 int printf (char*,int ,char*) ;
 char* resolve_refdup (char*,int,struct object_id*,int*) ;
 int strbuf_branchname (struct strbuf*,char const*,unsigned int) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int the_repository ;

__attribute__((used)) static int delete_branches(int argc, const char **argv, int force, int kinds,
      int quiet)
{
 struct commit *head_rev = ((void*)0);
 struct object_id oid;
 char *name = ((void*)0);
 const char *fmt;
 int i;
 int ret = 0;
 int remote_branch = 0;
 struct strbuf bname = STRBUF_INIT;
 unsigned allowed_interpret;

 switch (kinds) {
 case 128:
  fmt = "refs/remotes/%s";

  remote_branch = 1;
  allowed_interpret = INTERPRET_BRANCH_REMOTE;

  force = 1;
  break;
 case 129:
  fmt = "refs/heads/%s";
  allowed_interpret = INTERPRET_BRANCH_LOCAL;
  break;
 default:
  die(_("cannot use -a with -d"));
 }

 if (!force) {
  head_rev = lookup_commit_reference(the_repository, &head_oid);
  if (!head_rev)
   die(_("Couldn't look up commit object for HEAD"));
 }
 for (i = 0; i < argc; i++, strbuf_reset(&bname)) {
  char *target = ((void*)0);
  int flags = 0;

  strbuf_branchname(&bname, argv[i], allowed_interpret);
  free(name);
  name = mkpathdup(fmt, bname.buf);

  if (kinds == 129) {
   const struct worktree *wt =
    find_shared_symref("HEAD", name);
   if (wt) {
    error(_("Cannot delete branch '%s' "
     "checked out at '%s'"),
          bname.buf, wt->path);
    ret = 1;
    continue;
   }
  }

  target = resolve_refdup(name,
     RESOLVE_REF_READING
     | RESOLVE_REF_NO_RECURSE
     | RESOLVE_REF_ALLOW_BAD_NAME,
     &oid, &flags);
  if (!target) {
   error(remote_branch
         ? _("remote-tracking branch '%s' not found.")
         : _("branch '%s' not found."), bname.buf);
   ret = 1;
   continue;
  }

  if (!(flags & (REF_ISSYMREF|REF_ISBROKEN)) &&
      check_branch_commit(bname.buf, name, &oid, head_rev, kinds,
     force)) {
   ret = 1;
   goto next;
  }

  if (delete_ref(((void*)0), name, is_null_oid(&oid) ? ((void*)0) : &oid,
          REF_NO_DEREF)) {
   error(remote_branch
         ? _("Error deleting remote-tracking branch '%s'")
         : _("Error deleting branch '%s'"),
         bname.buf);
   ret = 1;
   goto next;
  }
  if (!quiet) {
   printf(remote_branch
          ? _("Deleted remote-tracking branch %s (was %s).\n")
          : _("Deleted branch %s (was %s).\n"),
          bname.buf,
          (flags & REF_ISBROKEN) ? "broken"
          : (flags & REF_ISSYMREF) ? target
          : find_unique_abbrev(&oid, DEFAULT_ABBREV));
  }
  delete_branch_config(bname.buf);

 next:
  free(target);
 }

 free(name);
 strbuf_release(&bname);

 return ret;
}
