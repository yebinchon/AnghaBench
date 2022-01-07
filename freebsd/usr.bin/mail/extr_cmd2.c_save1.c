
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int m_flag; } ;
struct ignoretab {int dummy; } ;
typedef int FILE ;


 int Fclose (int *) ;
 int * Fopen (char*,char*) ;
 int MMNORM ;
 int MSAVED ;
 scalar_t__ access (char*,int ) ;
 char* expand (char*) ;
 scalar_t__ ferror (int *) ;
 int fflush (int *) ;
 int first (int ,int ) ;
 scalar_t__ getmsglist (char*,int*,int ) ;
 struct message* message ;
 int msgCount ;
 int printf (char*,char const*) ;
 scalar_t__ salloc (int) ;
 scalar_t__ sendmessage (struct message*,int *,struct ignoretab*,int *) ;
 char* snarf (char*,int*) ;
 int * stdout ;
 int touch (struct message*) ;
 int warn (char*,...) ;
 int warnx (char*,char*) ;

int
save1(char str[], int mark, const char *cmd, struct ignoretab *ignore)
{
 struct message *mp;
 char *file;
 const char *disp;
 int f, *msgvec, *ip;
 FILE *obuf;

 msgvec = (int *)salloc((msgCount + 2) * sizeof(*msgvec));
 if ((file = snarf(str, &f)) == ((void*)0))
  return (1);
 if (!f) {
  *msgvec = first(0, MMNORM);
  if (*msgvec == 0) {
   printf("No messages to %s.\n", cmd);
   return (1);
  }
  msgvec[1] = 0;
 }
 if (f && getmsglist(str, msgvec, 0) < 0)
  return (1);
 if ((file = expand(file)) == ((void*)0))
  return (1);
 printf("\"%s\" ", file);
 (void)fflush(stdout);
 if (access(file, 0) >= 0)
  disp = "[Appended]";
 else
  disp = "[New file]";
 if ((obuf = Fopen(file, "a")) == ((void*)0)) {
  warn((char *)((void*)0));
  return (1);
 }
 for (ip = msgvec; *ip && ip-msgvec < msgCount; ip++) {
  mp = &message[*ip - 1];
  touch(mp);
  if (sendmessage(mp, obuf, ignore, ((void*)0)) < 0) {
   warnx("%s", file);
   (void)Fclose(obuf);
   return (1);
  }
  if (mark)
   mp->m_flag |= MSAVED;
 }
 (void)fflush(obuf);
 if (ferror(obuf))
  warn("%s", file);
 (void)Fclose(obuf);
 printf("%s\n", disp);
 return (0);
}
