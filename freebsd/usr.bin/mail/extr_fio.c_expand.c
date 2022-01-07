
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xname ;
struct stat {int dummy; } ;
typedef int cmdbuf ;


 int BUFSIZ ;
 int PATHSIZE ;
 scalar_t__ SIGPIPE ;
 scalar_t__ WIFSIGNALED (int ) ;
 scalar_t__ WTERMSIG (int ) ;
 char* _PATH_CSHELL ;
 int close (int) ;
 int findmail (char*,char*,int) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ getfold (char*,int) ;
 char* homedir ;
 char* myname ;
 scalar_t__ pipe (int*) ;
 char* prevfile ;
 int printf (char*) ;
 int read (int,char*,int) ;
 char* savestr (char*) ;
 int snprintf (char*,int,char*,char*,...) ;
 int start_command (char*,int ,int,int,char*,char*,int *) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stderr ;
 scalar_t__ strchr (char*,char) ;
 int strpbrk (char*,char*) ;
 char* value (char*) ;
 scalar_t__ wait_child (int) ;
 int wait_status ;
 int warn (char*) ;

char *
expand(char *name)
{
 char xname[PATHSIZE];
 char cmdbuf[PATHSIZE];
 int pid, l;
 char *cp, *sh;
 int pivec[2];
 struct stat sbuf;







 switch (*name) {
 case '%':
  findmail(name[1] ? name + 1 : myname, xname, sizeof(xname));
  return (savestr(xname));
 case '#':
  if (name[1] != 0)
   break;
  if (prevfile[0] == 0) {
   printf("No previous file\n");
   return (((void*)0));
  }
  return (savestr(prevfile));
 case '&':
  if (name[1] == 0 && (name = value("MBOX")) == ((void*)0))
   name = "~/mbox";

 }
 if (name[0] == '+' && getfold(cmdbuf, sizeof(cmdbuf)) >= 0) {
  (void)snprintf(xname, sizeof(xname), "%s/%s", cmdbuf, name + 1);
  name = savestr(xname);
 }

 if (name[0] == '~' && homedir != ((void*)0) &&
     (name[1] == '/' || name[1] == '\0')) {
  (void)snprintf(xname, sizeof(xname), "%s%s", homedir, name + 1);
  name = savestr(xname);
 }
 if (!strpbrk(name, "~{[*?$`'\"\\"))
  return (savestr(name));
 if (pipe(pivec) < 0) {
  warn("pipe");
  return (((void*)0));
 }
 (void)snprintf(cmdbuf, sizeof(cmdbuf), "echo %s", name);
 if ((sh = value("SHELL")) == ((void*)0))
  sh = _PATH_CSHELL;
 pid = start_command(sh, 0, -1, pivec[1], "-c", cmdbuf, ((void*)0));
 if (pid < 0) {
  (void)close(pivec[0]);
  (void)close(pivec[1]);
  return (((void*)0));
 }
 (void)close(pivec[1]);
 l = read(pivec[0], xname, BUFSIZ);
 (void)close(pivec[0]);
 if (wait_child(pid) < 0 && WIFSIGNALED(wait_status) &&
     WTERMSIG(wait_status) != SIGPIPE) {
  fprintf(stderr, "\"%s\": Expansion failed.\n", name);
  return (((void*)0));
 }
 if (l < 0) {
  warn("read");
  return (((void*)0));
 }
 if (l == 0) {
  fprintf(stderr, "\"%s\": No match.\n", name);
  return (((void*)0));
 }
 if (l == BUFSIZ) {
  fprintf(stderr, "\"%s\": Expansion buffer overflow.\n", name);
  return (((void*)0));
 }
 xname[l] = '\0';
 for (cp = &xname[l-1]; *cp == '\n' && cp > xname; cp--)
  ;
 cp[1] = '\0';
 if (strchr(xname, ' ') && stat(xname, &sbuf) < 0) {
  fprintf(stderr, "\"%s\": Ambiguous.\n", name);
  return (((void*)0));
 }
 return (savestr(xname));
}
