
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PS_OPT_CAPABILITIES ;
 int getopt (int,char* const*,char*) ;
 int procstat_opts ;
 int usage () ;

void
cmdopt_files(int argc, char * const argv[])
{
 int ch;

 while ((ch = getopt(argc, argv, "C")) != -1) {
  switch (ch) {
  case 'C':
   procstat_opts |= PS_OPT_CAPABILITIES;
   break;
  case '?':
  default:
   usage();
  }
 }
}
