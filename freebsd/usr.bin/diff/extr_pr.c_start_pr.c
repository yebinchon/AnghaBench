
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr {int kq; int e; int ostdout; } ;
struct kevent {int dummy; } ;
typedef int pid_t ;


 int EVFILT_PROCDESC ;
 int EV_ADD ;
 int EV_SET (int ,int,int ,int ,int ,int ,int *) ;
 int NOTE_EXIT ;
 int PD_CLOEXEC ;
 int SIGPIPE ;
 int SIG_IGN ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int _PATH_PR ;
 int _exit (int) ;
 int close (int) ;
 int diffargs ;
 int dup (int) ;
 int dup2 (int,int) ;
 int err (int,char*) ;
 int execl (int ,int ,char*,char*,char*) ;
 int fflush (int ) ;
 int free (char*) ;
 int kevent (int,int ,int,int *,int ,int *) ;
 int kqueue () ;
 int pdfork (int*,int ) ;
 int pipe (int*) ;
 int rewind (int ) ;
 int signal (int ,int ) ;
 int status ;
 int stdout ;
 int xasprintf (char**,char*,int ,char*,char*) ;
 struct pr* xcalloc (int,int) ;
 int xmalloc (int) ;

struct pr *
start_pr(char *file1, char *file2)
{
 int pfd[2];
 int pr_pd;
 pid_t pid;
 char *header;
 struct pr *pr;

 pr = xcalloc(1, sizeof(*pr));

 xasprintf(&header, "%s %s %s", diffargs, file1, file2);
 signal(SIGPIPE, SIG_IGN);
 fflush(stdout);
 rewind(stdout);
 if (pipe(pfd) == -1)
  err(2, "pipe");
 switch ((pid = pdfork(&pr_pd, PD_CLOEXEC))) {
 case -1:
  status |= 2;
  free(header);
  err(2, "No more processes");
 case 0:

  if (pfd[0] != STDIN_FILENO) {
   dup2(pfd[0], STDIN_FILENO);
   close(pfd[0]);
  }
  close(pfd[1]);
  execl(_PATH_PR, _PATH_PR, "-h", header, (char *)0);
  _exit(127);
 default:


  if (pfd[1] != STDOUT_FILENO) {
   pr->ostdout = dup(STDOUT_FILENO);
   dup2(pfd[1], STDOUT_FILENO);
   close(pfd[1]);
   close(pfd[1]);
   }
   close(pfd[0]);
   rewind(stdout);
   free(header);
   pr->kq = kqueue();
   if (pr->kq == -1)
    err(2, "kqueue");
   pr->e = xmalloc(sizeof(struct kevent));
   EV_SET(pr->e, pr_pd, EVFILT_PROCDESC, EV_ADD, NOTE_EXIT, 0,
       ((void*)0));
   if (kevent(pr->kq, pr->e, 1, ((void*)0), 0, ((void*)0)) == -1)
    err(2, "kevent");
 }
 return (pr);
}
