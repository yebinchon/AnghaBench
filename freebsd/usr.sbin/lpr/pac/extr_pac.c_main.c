
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* DEFLP ;
 int account (int *) ;
 int acctfile ;
 scalar_t__ allflag ;
 int atof (char const*) ;
 int chkprinter (char const*) ;
 int dumpit () ;
 int enter (char const*) ;
 int errs ;
 int euid ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 char* getenv (char*) ;
 int geteuid () ;
 int getuid () ;
 int mflag ;
 int perror (int ) ;
 int pflag ;
 int price ;
 int printf (char*,char const*) ;
 int reverse ;
 int rewrite () ;
 int sort ;
 int sumfile ;
 scalar_t__ summarize ;
 int uid ;
 int usage () ;

int
main(int argc, char **argv)
{
 FILE *acctf;
 const char *cp, *printer;

 printer = ((void*)0);
 euid = geteuid();
 uid = getuid();
 while (--argc) {
  cp = *++argv;
  if (*cp++ == '-') {
   switch(*cp++) {
   case 'P':



    printer = cp;
    continue;

   case 'p':



    price = atof(cp);
    pflag = 1;
    continue;

   case 's':



    summarize++;
    continue;

   case 'c':



    sort++;
    continue;

   case 'm':



    mflag = 1;
    continue;

   case 'r':



    reverse++;
    continue;

   default:
    usage();
   }
  }
  (void) enter(--cp);
  allflag = 0;
 }
 if (printer == ((void*)0) && (printer = getenv("PRINTER")) == ((void*)0))
  printer = DEFLP;
 if (!chkprinter(printer)) {
  printf("pac: unknown printer %s\n", printer);
  exit(2);
 }

 if ((acctf = fopen(acctfile, "r")) == ((void*)0)) {
  perror(acctfile);
  exit(1);
 }
 account(acctf);
 fclose(acctf);
 if ((acctf = fopen(sumfile, "r")) != ((void*)0)) {
  account(acctf);
  fclose(acctf);
 }
 if (summarize)
  rewrite();
 else
  dumpit();
 exit(errs);
}
