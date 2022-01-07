
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Tflag ;
 int printf (char*,...) ;
 scalar_t__ uflag ;

__attribute__((used)) static void
heading(void)
{

 printf("%-16s ", "NAME");
 if (Tflag)
  printf("S ");
 printf("%-12s %-12s ", "LINE", "TIME");
 if (uflag)
  printf("IDLE  ");
 printf("%-16s\n", "FROM");
}
