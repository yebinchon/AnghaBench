
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int perror (char*) ;
 scalar_t__ revoke (char*) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 char **d;
 int error = 0;

 if (argc == 1)
  usage();

 for (d = &argv[1]; *d != ((void*)0); d++) {
  if (revoke(*d) != 0) {
   perror(*d);
   error = 1;
  }
 }

 return (error);
}
