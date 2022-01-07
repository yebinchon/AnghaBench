
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bisect_terms {int term_bad; int term_good; } ;


 int PROMPT_ECHO ;
 int _ (char*) ;
 int error (int ,char*,char*,char*,char*) ;
 int for_each_glob_ref_in (int ,char const*,char*,void*) ;
 int free (void*) ;
 int git_path_bisect_start () ;
 char* git_prompt (int ,int ) ;
 int is_empty_or_missing_file (int ) ;
 int isatty (int ) ;
 int mark_good ;
 char* need_bad_and_good_revision_warning ;
 char* need_bisect_start_warning ;
 scalar_t__ ref_exists (char const*) ;
 scalar_t__ starts_with (char*,char*) ;
 int strcmp (char const*,int ) ;
 char* vocab_bad ;
 char* vocab_good ;
 int warning (int ,int ) ;
 char* xstrfmt (char*,int ) ;

__attribute__((used)) static int bisect_next_check(const struct bisect_terms *terms,
        const char *current_term)
{
 int missing_good = 1, missing_bad = 1, retval = 0;
 const char *bad_ref = xstrfmt("refs/bisect/%s", terms->term_bad);
 const char *good_glob = xstrfmt("%s-*", terms->term_good);

 if (ref_exists(bad_ref))
  missing_bad = 0;

 for_each_glob_ref_in(mark_good, good_glob, "refs/bisect/",
        (void *) &missing_good);

 if (!missing_good && !missing_bad)
  goto finish;

 if (!current_term) {
  retval = -1;
  goto finish;
 }

 if (missing_good && !missing_bad &&
     !strcmp(current_term, terms->term_good)) {
  char *yesno;




  warning(_("bisecting only with a %s commit"), terms->term_bad);
  if (!isatty(0))
   goto finish;





  yesno = git_prompt(_("Are you sure [Y/n]? "), PROMPT_ECHO);
  if (starts_with(yesno, "N") || starts_with(yesno, "n"))
   retval = -1;
  goto finish;
 }
 if (!is_empty_or_missing_file(git_path_bisect_start())) {
  retval = error(_(need_bad_and_good_revision_warning),
          vocab_bad, vocab_good, vocab_bad, vocab_good);
 } else {
  retval = error(_(need_bisect_start_warning),
          vocab_good, vocab_bad, vocab_good, vocab_bad);
 }

finish:
 free((void *) good_glob);
 free((void *) bad_ref);
 return retval;
}
