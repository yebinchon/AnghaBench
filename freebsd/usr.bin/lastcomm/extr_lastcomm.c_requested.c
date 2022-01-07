
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acctv3 {int ac_comm; int ac_tty; int ac_uid; } ;


 int AC_COMM_LEN ;
 char* getdev (int ) ;
 int strcmp (char const*,char*) ;
 int strncmp (int ,char*,int ) ;
 char* user_from_uid (int ,int ) ;

int
requested(char *argv[], struct acctv3 *acp)
{
 const char *p;

 do {
  p = user_from_uid(acp->ac_uid, 0);
  if (!strcmp(p, *argv))
   return (1);
  if ((p = getdev(acp->ac_tty)) && !strcmp(p, *argv))
   return (1);
  if (!strncmp(acp->ac_comm, *argv, AC_COMM_LEN))
   return (1);
 } while (*++argv);
 return (0);
}
