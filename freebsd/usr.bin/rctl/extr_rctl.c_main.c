
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_rule (char*,char*) ;
 int errx (int,char*) ;
 char* expand_rule (char*,int) ;
 int free (char*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int remove_rule (char*,char*) ;
 int show_limits (char*,char*,int,int) ;
 int show_rules (char*,char*,int,int) ;
 int show_usage (char*,char*,int) ;
 char* strdup (char*) ;
 int usage () ;

int
main(int argc, char **argv)
{
 int ch, aflag = 0, hflag = 0, nflag = 0, lflag = 0, rflag = 0,
     uflag = 0;
 char *rule = ((void*)0), *unexpanded_rule;
 int i, cumulated_error, error;

 while ((ch = getopt(argc, argv, "ahlnru")) != -1) {
  switch (ch) {
  case 'a':
   aflag = 1;
   break;
  case 'h':
   hflag = 1;
   break;
  case 'l':
   lflag = 1;
   break;
  case 'n':
   nflag = 1;
   break;
  case 'r':
   rflag = 1;
   break;
  case 'u':
   uflag = 1;
   break;

  case '?':
  default:
   usage();
  }
 }

 argc -= optind;
 argv += optind;

 if (aflag + lflag + rflag + uflag > 1)
  errx(1, "at most one of -a, -l, -r, or -u may be specified");

 if (argc == 0) {
  if (aflag + lflag + rflag + uflag == 0) {
   rule = strdup("::");
   show_rules(rule, rule, hflag, nflag);

   return (0);
  }

  usage();
 }

 cumulated_error = 0;

 for (i = 0; i < argc; i++) {
  unexpanded_rule = argv[i];






  if (aflag != 0 && nflag != 0)
   rule = expand_rule(unexpanded_rule, 0);
  else
   rule = expand_rule(unexpanded_rule, 1);

  if (rule == ((void*)0)) {
   cumulated_error++;
   continue;
  }






  if (aflag) {
   error = add_rule(rule, unexpanded_rule);
  } else if (lflag) {
   error = show_limits(rule, unexpanded_rule,
       hflag, nflag);
  } else if (rflag) {
   error = remove_rule(rule, unexpanded_rule);
  } else if (uflag) {
   error = show_usage(rule, unexpanded_rule, hflag);
  } else {
   error = show_rules(rule, unexpanded_rule,
       hflag, nflag);
  }

  if (error != 0)
   cumulated_error++;

  free(rule);
 }

 return (cumulated_error);
}
