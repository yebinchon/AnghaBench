
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bisect_terms {char* term_bad; char* term_good; } ;


 int _ (char*) ;
 int error (int ,char*,char*) ;
 int git_path_bisect_terms () ;
 int is_empty_or_missing_file (int ) ;
 scalar_t__ one_of (char const*,char*,char*,char*,...) ;
 int set_terms (struct bisect_terms*,char*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int write_terms (char*,char*) ;

__attribute__((used)) static int check_and_set_terms(struct bisect_terms *terms, const char *cmd)
{
 int has_term_file = !is_empty_or_missing_file(git_path_bisect_terms());

 if (one_of(cmd, "skip", "start", "terms", ((void*)0)))
  return 0;

 if (has_term_file && strcmp(cmd, terms->term_bad) &&
     strcmp(cmd, terms->term_good))
  return error(_("Invalid command: you're currently in a "
    "%s/%s bisect"), terms->term_bad,
    terms->term_good);

 if (!has_term_file) {
  if (one_of(cmd, "bad", "good", ((void*)0))) {
   set_terms(terms, "bad", "good");
   return write_terms(terms->term_bad, terms->term_good);
  }
  if (one_of(cmd, "new", "old", ((void*)0))) {
   set_terms(terms, "new", "old");
   return write_terms(terms->term_bad, terms->term_good);
  }
 }

 return 0;
}
