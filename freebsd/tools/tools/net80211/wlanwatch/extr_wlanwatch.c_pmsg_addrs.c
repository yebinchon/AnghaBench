
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 int SA_SIZE (struct sockaddr*) ;
 int addrnames ;
 int bprintf (int ,int,int ) ;
 int printf (char*,...) ;
 int putchar (char) ;
 char* routename (struct sockaddr*) ;
 int stdout ;

__attribute__((used)) static void
pmsg_addrs(char *cp, int addrs)
{
 struct sockaddr *sa;
 int i;

 if (addrs == 0) {
  (void) putchar('\n');
  return;
 }
 printf("\nsockaddrs: ");
 bprintf(stdout, addrs, addrnames);
 putchar('\n');
 for (i = 1; i; i <<= 1)
  if (i & addrs) {
   sa = (struct sockaddr *)cp;
   printf(" %s", routename(sa));
   cp += SA_SIZE(sa);
  }
 putchar('\n');
}
