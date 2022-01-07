
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int string ;
struct TYPE_4__ {char* acu_name; int (* acu_abort ) () ;scalar_t__ (* acu_dialer ) (char*,int ) ;} ;
typedef int FILE ;


 int AT ;
 scalar_t__ CM ;
 int CU ;
 int DU ;
 char* DV ;
 int FALSE ;
 int FD ;
 int HOST ;
 TYPE_1__* NOACU ;
 int * NOFILE ;
 scalar_t__ NOSTR ;
 char* PH ;
 char* PN ;
 int SIGINT ;
 int SIGQUIT ;
 int SIG_IGN ;
 int VERBOSE ;
 TYPE_1__* acu ;
 int acuabort ;
 TYPE_1__* acutype (int ) ;
 scalar_t__ conflag ;
 int disconnect (scalar_t__) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int jmpbuf ;
 int logent (int ,char*,char*,char*) ;
 int parwrite (int ,scalar_t__,int ) ;
 int printf (char*,...) ;
 int setboolean (int ,int ) ;
 scalar_t__ setjmp (int ) ;
 int signal (int ,int ) ;
 int size (scalar_t__) ;
 scalar_t__ strcmp (char*,int ) ;
 int strcspn (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int strspn (char*,char*) ;
 int stub1 () ;
 scalar_t__ stub2 (char*,int ) ;
 scalar_t__ stub3 (char*,int ) ;
 int stub4 () ;
 int value (int ) ;

char *
con(void)
{
 char *cp = PN;
 char *phnum, string[256];
 FILE *fd;
 volatile int tried = 0;

 if (!DU) {
  if (CM != NOSTR)
   parwrite(FD, CM, size(CM));
  logent(value(HOST), "", DV, "call completed");
  return (NOSTR);
 }




 signal(SIGINT, acuabort);
 signal(SIGQUIT, acuabort);
 if (setjmp(jmpbuf)) {
  signal(SIGINT, SIG_IGN);
  signal(SIGQUIT, SIG_IGN);
  printf("\ncall aborted\n");
  logent(value(HOST), "", "", "call aborted");
  if (acu != NOACU) {
   setboolean(value(VERBOSE), FALSE);
   if (conflag)
    disconnect(NOSTR);
   else
    (*acu->acu_abort)();
  }
  return ("interrupt");
 }
 if ((acu = acutype(AT)) == NOACU)
  return ("unknown ACU type");
 if (*cp != '@') {
  while (*cp) {
   phnum = cp;
   cp += strcspn(cp, ",");
   if (*cp != '\0')
    *cp++ = '\0';

   if (strlen(phnum) == 0)
    continue;

   conflag = (*acu->acu_dialer)(phnum, CU);
   if (conflag)
    break;

   logent(value(HOST), phnum, acu->acu_name, "call failed");
   tried++;
  }
 } else {
  if ((fd = fopen(PH, "r")) == NOFILE) {
   printf("%s: ", PH);
   return ("can't open phone number file");
  }
  while (fgets(string, sizeof(string), fd) != NOSTR) {
   cp = &string[strcspn(string, " \t\n")];
   if (*cp != '\0')
    *cp++ = '\0';

   if (strcmp(string, value(HOST)) != 0)
    continue;

   cp += strspn(cp, " \t\n");
   phnum = cp;
   *(cp + strcspn(cp, ",\n")) = '\0';

   if (strlen(phnum) == 0)
    continue;

   conflag = (*acu->acu_dialer)(phnum, CU);
   if (conflag)
    break;

   logent(value(HOST), phnum, acu->acu_name, "call failed");
   tried++;
  }
  fclose(fd);
 }
 if (conflag) {
  if (CM != NOSTR)
   parwrite(FD, CM, size(CM));
  logent(value(HOST), phnum, acu->acu_name, "call completed");
  return (NOSTR);
 } else if (!tried) {
  logent(value(HOST), "", acu->acu_name, "missing phone number");
  return ("missing phone number");
 } else {
  (*acu->acu_abort)();
  return ("call failed");
 }
}
