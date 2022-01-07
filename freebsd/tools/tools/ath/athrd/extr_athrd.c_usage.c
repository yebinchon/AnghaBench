
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char const*) ;

__attribute__((used)) static void
usage(const char *progname)
{
 printf("usage: %s [-acdefoilpr4ABGT] [-m opmode] [cc | rd]\n", progname);
 exit(-1);
}
