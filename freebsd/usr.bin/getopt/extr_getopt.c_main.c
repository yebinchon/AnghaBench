
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ caph_enter () ;
 scalar_t__ caph_limit_stdio () ;
 int err (int,char*) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 int optind ;
 int printf (char*,...) ;

int
main(int argc, char *argv[])
{
 int c;
 int status = 0;

 if (caph_limit_stdio() < 0 || caph_enter() < 0)
  err(1, "capsicum");

 optind = 2;
 while ((c = getopt(argc, argv, argv[1])) != -1)
  switch (c) {
  case '?':
   status = 1;
   break;
  default:
   if (optarg != ((void*)0))
    printf(" -%c %s", c, optarg);
   else
    printf(" -%c", c);
   break;
  }
 printf(" --");
 for (; optind < argc; optind++)
  printf(" %s", argv[optind]);
 printf("\n");
 return status;
}
