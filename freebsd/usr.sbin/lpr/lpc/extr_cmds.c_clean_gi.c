
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cln_debug ;
 scalar_t__ cln_filecnt ;
 double cln_minage ;
 int cln_now ;
 scalar_t__ cln_queuecnt ;
 scalar_t__ cln_sizecnt ;
 scalar_t__ cln_testonly ;
 int generic_initerr ;
 char* generic_nullarg ;
 int * generic_wrapup ;
 int printf (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int time (int *) ;
 int wrapup_clean ;

void
clean_gi(int argc, char *argv[])
{


 cln_queuecnt = 0;
 cln_now = time(((void*)0));
 cln_minage = 3600.0;
 cln_filecnt = 0;
 cln_sizecnt = 0;
 cln_debug = 0;
 cln_testonly = 0;
 generic_wrapup = &wrapup_clean;


 for (; argc > 0; argc--, argv++) {
  if (**argv != '-')
   break;
  if (strcmp(*argv, "-d") == 0) {

   cln_debug++;
   *argv = generic_nullarg;
  } else {
   printf("Invalid option '%s'\n", *argv);
   generic_initerr = 1;
  }
 }

 return;
}
