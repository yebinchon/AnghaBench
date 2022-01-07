
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rline ;


 int col ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,int,...) ;
 scalar_t__ strlen (char*) ;

void
prank(int n)
{
 char rline[100];
 static const char *r[] = {
  "th", "st", "nd", "rd", "th", "th", "th", "th", "th", "th"
 };

 if (n == 0) {
  printf("active");
  col += 6;
  return;
 }
 if ((n/10)%10 == 1)
  (void)snprintf(rline, sizeof(rline), "%dth", n);
 else
  (void)snprintf(rline, sizeof(rline), "%d%s", n, r[n%10]);
 col += strlen(rline);
 printf("%s", rline);
}
