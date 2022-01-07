
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 int execve (char*,char**,int *) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

int
main(int argc, char **argv)
{

 if (argc != 2) {
  fprintf(stderr, "usage: %s <progname>\n", argv[0]);
  exit(2);
 }

 execve(argv[1], &argv[1], ((void*)0));
 err(1, "execve failed");
}
