
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct object_id {int dummy; } ;
struct commit {int dummy; } ;
struct bisect_terms {int term_good; int term_bad; } ;
typedef int FILE ;


 struct strbuf STRBUF_INIT ;
 int UPDATE_REFS_MSG_ON_ERR ;
 int _ (char*) ;
 int error (int ,char const*) ;
 int error_errno (int ,int ) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,char const*,char const*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 int git_path_bisect_log () ;
 int log_commit (int *,char*,char const*,struct commit*) ;
 struct commit* lookup_commit_reference (int ,struct object_id*) ;
 scalar_t__ one_of (char const*,int ,char*,int *) ;
 int strbuf_addf (struct strbuf*,char*,char const*,...) ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (char const*,int ) ;
 int the_repository ;
 scalar_t__ update_ref (int *,int ,struct object_id*,int *,int ,int ) ;

__attribute__((used)) static int bisect_write(const char *state, const char *rev,
   const struct bisect_terms *terms, int nolog)
{
 struct strbuf tag = STRBUF_INIT;
 struct object_id oid;
 struct commit *commit;
 FILE *fp = ((void*)0);
 int retval = 0;

 if (!strcmp(state, terms->term_bad)) {
  strbuf_addf(&tag, "refs/bisect/%s", state);
 } else if (one_of(state, terms->term_good, "skip", ((void*)0))) {
  strbuf_addf(&tag, "refs/bisect/%s-%s", state, rev);
 } else {
  retval = error(_("Bad bisect_write argument: %s"), state);
  goto finish;
 }

 if (get_oid(rev, &oid)) {
  retval = error(_("couldn't get the oid of the rev '%s'"), rev);
  goto finish;
 }

 if (update_ref(((void*)0), tag.buf, &oid, ((void*)0), 0,
         UPDATE_REFS_MSG_ON_ERR)) {
  retval = -1;
  goto finish;
 }

 fp = fopen(git_path_bisect_log(), "a");
 if (!fp) {
  retval = error_errno(_("couldn't open the file '%s'"), git_path_bisect_log());
  goto finish;
 }

 commit = lookup_commit_reference(the_repository, &oid);
 log_commit(fp, "%s", state, commit);

 if (!nolog)
  fprintf(fp, "git bisect %s %s\n", state, rev);

finish:
 if (fp)
  fclose(fp);
 strbuf_release(&tag);
 return retval;
}
