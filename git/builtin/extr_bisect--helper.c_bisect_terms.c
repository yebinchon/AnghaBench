
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bisect_terms {char* term_good; char* term_bad; } ;


 char* _ (char*) ;
 int error (char*,...) ;
 scalar_t__ get_terms (struct bisect_terms*) ;
 scalar_t__ one_of (char const*,char*,char*,int *) ;
 int printf (char*,char*,...) ;

__attribute__((used)) static int bisect_terms(struct bisect_terms *terms, const char *option)
{
 if (get_terms(terms))
  return error(_("no terms defined"));

 if (option == ((void*)0)) {
  printf(_("Your current terms are %s for the old state\n"
    "and %s for the new state.\n"),
         terms->term_good, terms->term_bad);
  return 0;
 }
 if (one_of(option, "--term-good", "--term-old", ((void*)0)))
  printf("%s\n", terms->term_good);
 else if (one_of(option, "--term-bad", "--term-new", ((void*)0)))
  printf("%s\n", terms->term_bad);
 else
  return error(_("invalid argument %s for 'git bisect terms'.\n"
          "Supported options are: "
          "--term-good|--term-old and "
          "--term-bad|--term-new."), option);

 return 0;
}
