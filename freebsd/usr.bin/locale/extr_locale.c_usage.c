
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*) ;

void
usage(void)
{
 printf("Usage: locale [ -a | -m ]\n"
        "       locale -k list [prefix]\n"
        "       locale [ -ck ] [keyword ...]\n");
 exit(1);
}
