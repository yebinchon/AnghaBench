
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum fd_drivetype { ____Placeholder_fd_drivetype } fd_drivetype ;


 int getname (int,char const**,char const**) ;
 int printf (char*,char const*,...) ;
 scalar_t__ verbose ;

void
showdev(enum fd_drivetype type, const char *fname)
{
 const char *name, *descr;

 getname(type, &name, &descr);
 if (verbose)
  printf("%s: %s drive (%s)\n", fname, name, descr);
 else
  printf("%s\n", name);
}
