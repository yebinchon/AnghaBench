
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* basename (char*) ;
 int do_fstat (int,char**) ;
 int do_fuser (int,char**) ;
 int err (int,char*,char*) ;
 int strcmp (char*,char*) ;

int
main(int argc, char *argv[])
{
 char *p;

 p = basename(argv[0]);
 if (p == ((void*)0))
  err(1, "basename(%s)", argv[0]);
 if (!strcmp(p, "fuser"))
  return (do_fuser(argc, argv));
 else
  return (do_fstat(argc, argv));
}
