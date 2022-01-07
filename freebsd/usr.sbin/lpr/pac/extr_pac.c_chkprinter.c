
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {double price100; int * acct_file; } ;





 int * acctfile ;
 scalar_t__ calloc (int,scalar_t__) ;
 int errx (int,char*,...) ;
 int exit (int) ;
 int fatal (struct printer*,char*,char*) ;
 int getprintcap (char const*,struct printer*) ;
 int init_printer (struct printer*) ;
 char* pcaperr (int) ;
 int pflag ;
 double price ;
 int printf (char*,char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,int *) ;
 scalar_t__ strlen (int *) ;
 char* sumfile ;

__attribute__((used)) static int
chkprinter(const char *ptrname)
{
 int stat;
 struct printer myprinter, *pp = &myprinter;

 init_printer(&myprinter);
 stat = getprintcap(ptrname, pp);
 switch(stat) {
 case 129:
  printf("pac: getprintcap: %s\n", pcaperr(stat));
  exit(3);
 case 130:
  return 0;
 case 128:
  fatal(pp, "%s", pcaperr(stat));
 }
 if ((acctfile = pp->acct_file) == ((void*)0))
  errx(3, "accounting not enabled for printer %s", ptrname);
 if (!pflag && pp->price100)
  price = pp->price100/10000.0;
 sumfile = (char *) calloc(sizeof(char), strlen(acctfile)+5);
 if (sumfile == ((void*)0))
  errx(1, "calloc failed");
 strcpy(sumfile, acctfile);
 strcat(sumfile, "_sum");
 return(1);
}
