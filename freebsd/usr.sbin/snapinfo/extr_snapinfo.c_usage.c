
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*) ;

__attribute__((used)) static void
usage(void)
{

 printf("usage: snapinfo [-v] -a\n");
 printf("       snapinfo [-v] mountpoint\n");
 exit(1);
}
