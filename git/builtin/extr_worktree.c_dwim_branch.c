
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct object_id {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int UNLEAK (char const*) ;
 scalar_t__ guess_remote ;
 scalar_t__ ref_exists (int ) ;
 int strbuf_check_branch_ref (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 char* unique_tracking_name (char const*,struct object_id*,int *) ;
 char* worktree_basename (char const*,int*) ;
 char* xstrndup (char const*,int) ;

__attribute__((used)) static const char *dwim_branch(const char *path, const char **new_branch)
{
 int n;
 const char *s = worktree_basename(path, &n);
 const char *branchname = xstrndup(s, n);
 struct strbuf ref = STRBUF_INIT;

 UNLEAK(branchname);
 if (!strbuf_check_branch_ref(&ref, branchname) &&
     ref_exists(ref.buf)) {
  strbuf_release(&ref);
  return branchname;
 }

 *new_branch = branchname;
 if (guess_remote) {
  struct object_id oid;
  const char *remote =
   unique_tracking_name(*new_branch, &oid, ((void*)0));
  return remote;
 }
 return ((void*)0);
}
