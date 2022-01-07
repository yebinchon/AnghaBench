
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int reply ;


 int fflush (int ) ;
 int fgets (char*,int,int ) ;
 int printf (char*) ;
 int stdin ;
 int stdout ;

__attribute__((used)) static int
yes (void)
{
 char reply[256], *p;

 reply[sizeof(reply) - 1] = 0;
 for (;;) {
  fflush(stdout);
  if (!fgets (reply, sizeof(reply) - 1, stdin))
   return (0);
  for (p=reply; *p==' ' || *p=='\t'; ++p)
   continue;
  if (*p=='y' || *p=='Y')
   return (1);
  if (*p=='n' || *p=='N' || *p=='\n' || *p=='\r')
   return (0);
  printf("Answer `yes' or `no': ");
 }
}
