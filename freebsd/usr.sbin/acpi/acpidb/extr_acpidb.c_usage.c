
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char const*) ;

__attribute__((used)) static void
usage(const char *progname)
{

 printf("usage: %s dsdt_file\n", progname);
 exit(1);
}
