
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZCOL ;
 int blankfill (int ) ;
 scalar_t__ col ;
 char* head0 ;
 char* head1 ;
 int printf (char*,char*) ;
 scalar_t__ strlen (char*) ;

void
header(void)
{
 printf("%s", head0);
 col = strlen(head0)+1;
 blankfill(SIZCOL);
 printf("%s", head1);
}
