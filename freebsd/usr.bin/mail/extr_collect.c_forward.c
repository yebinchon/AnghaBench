
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int dummy; } ;
struct ignoretab {int dummy; } ;
typedef int FILE ;


 int MMNORM ;
 int first (int ,int ) ;
 scalar_t__ getmsglist (char*,int*,int ) ;
 struct ignoretab* ignore ;
 scalar_t__ isupper (unsigned char) ;
 struct message* message ;
 int msgCount ;
 int printf (char*,...) ;
 scalar_t__ salloc (int) ;
 scalar_t__ sendmessage (struct message*,int *,struct ignoretab*,char*) ;
 int touch (struct message*) ;
 char* value (char*) ;
 int warnx (char*,char*) ;

int
forward(char ms[], FILE *fp, char *fn, int f)
{
 int *msgvec;
 struct ignoretab *ig;
 char *tabst;

 msgvec = (int *)salloc((msgCount+1) * sizeof(*msgvec));
 if (msgvec == ((void*)0))
  return (0);
 if (getmsglist(ms, msgvec, 0) < 0)
  return (0);
 if (*msgvec == 0) {
  *msgvec = first(0, MMNORM);
  if (*msgvec == 0) {
   printf("No appropriate messages\n");
   return (0);
  }
  msgvec[1] = 0;
 }
 if (f == 'f' || f == 'F')
  tabst = ((void*)0);
 else if ((tabst = value("indentprefix")) == ((void*)0))
  tabst = "\t";
 ig = isupper((unsigned char)f) ? ((void*)0) : ignore;
 printf("Interpolating:");
 for (; *msgvec != 0; msgvec++) {
  struct message *mp = message + *msgvec - 1;

  touch(mp);
  printf(" %d", *msgvec);
  if (sendmessage(mp, fp, ig, tabst) < 0) {
   warnx("%s", fn);
   return (-1);
  }
 }
 printf("\n");
 return (0);
}
