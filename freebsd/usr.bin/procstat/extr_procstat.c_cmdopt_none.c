
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getopt (int,char* const*,char*) ;
 int usage () ;

void
cmdopt_none(int argc, char * const argv[])
{
 int ch;

 while ((ch = getopt(argc, argv, "")) != -1) {
  switch (ch) {
  case '?':
  default:
   usage();
  }
 }
}
