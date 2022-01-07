
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PS_OPT_SIGNUM ;
 int getopt (int,char* const*,char*) ;
 int procstat_opts ;
 int usage () ;

void
cmdopt_signals(int argc, char * const argv[])
{
 int ch;

 while ((ch = getopt(argc, argv, "n")) != -1) {
  switch (ch) {
  case 'n':
   procstat_opts |= PS_OPT_SIGNUM;
   break;
  case '?':
  default:
   usage();
  }
 }
}
