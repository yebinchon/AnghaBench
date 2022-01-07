
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PS_OPT_PERTHREAD ;
 int getopt (int,char* const*,char*) ;
 int procstat_opts ;
 int usage () ;

void
cmdopt_rusage(int argc, char * const argv[])
{
 int ch;

 while ((ch = getopt(argc, argv, "Ht")) != -1) {
  switch (ch) {
  case 'H':

  case 't':
   procstat_opts |= PS_OPT_PERTHREAD;
   break;
  case '?':
  default:
   usage();
  }
 }
}
