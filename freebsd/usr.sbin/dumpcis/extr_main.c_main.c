
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int scanfile (char*) ;

int
main(int argc, char **argv)
{
 for (argc--, argv++; argc; argc--, argv++)
  scanfile(*argv);
 return 0;
}
