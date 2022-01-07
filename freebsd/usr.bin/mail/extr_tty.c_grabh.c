
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_lflag; void** c_cc; } ;
struct header {int * h_bcc; int * h_cc; int * h_subject; int * h_to; } ;
typedef int sig_t ;


 int EXTPROC ;
 int GBCC ;
 int GCC ;
 int GSUBJECT ;
 int GTO ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTSTP ;
 int SIGTTIN ;
 int SIGTTOU ;
 int SIG_DFL ;
 int SIG_IGN ;
 int TCSADRAIN ;
 int TIOCEXT ;
 size_t VERASE ;
 size_t VKILL ;
 void* _POSIX_VDISABLE ;
 void* c_erase ;
 void* c_kill ;
 int * detract (int *,int ) ;
 void* extract (int *,int) ;
 int fileno (int ) ;
 int intjmp ;
 scalar_t__ ioctl (int ,int ,int*) ;
 int * readtty (char*,int *) ;
 scalar_t__ setjmp (int ) ;
 int signal (int ,int ) ;
 int stdin ;
 scalar_t__ tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;
 int ttyint ;
 scalar_t__ ttyset ;
 int warn (char*) ;

int
grabh(struct header *hp, int gflags)
{
 struct termios ttybuf;
 sig_t saveint;
 sig_t savetstp;
 sig_t savettou;
 sig_t savettin;
 int errs;

 sig_t savequit;






 savetstp = signal(SIGTSTP, SIG_DFL);
 savettou = signal(SIGTTOU, SIG_DFL);
 savettin = signal(SIGTTIN, SIG_DFL);
 errs = 0;

 ttyset = 0;

 if (tcgetattr(fileno(stdin), &ttybuf) < 0) {
  warn("tcgetattr(stdin)");
  return (-1);
 }
 c_erase = ttybuf.c_cc[VERASE];
 c_kill = ttybuf.c_cc[VKILL];

 ttybuf.c_cc[VERASE] = _POSIX_VDISABLE;
 ttybuf.c_cc[VKILL] = _POSIX_VDISABLE;
 if ((saveint = signal(SIGINT, SIG_IGN)) == SIG_DFL)
  (void)signal(SIGINT, SIG_DFL);
 if ((savequit = signal(SIGQUIT, SIG_IGN)) == SIG_DFL)
  (void)signal(SIGQUIT, SIG_DFL);
 if (gflags & GTO) {

  if (!ttyset && hp->h_to != ((void*)0))
   ttyset++, tcsetattr(fileno(stdin), TCSADRAIN, &ttybuf);

  hp->h_to =
   extract(readtty("To: ", detract(hp->h_to, 0)), GTO);
 }
 if (gflags & GSUBJECT) {

  if (!ttyset && hp->h_subject != ((void*)0))
   ttyset++, tcsetattr(fileno(stdin), TCSADRAIN, &ttybuf);

  hp->h_subject = readtty("Subject: ", hp->h_subject);
 }
 if (gflags & GCC) {

  if (!ttyset && hp->h_cc != ((void*)0))
   ttyset++, tcsetattr(fileno(stdin), TCSADRAIN, &ttybuf);

  hp->h_cc =
   extract(readtty("Cc: ", detract(hp->h_cc, 0)), GCC);
 }
 if (gflags & GBCC) {

  if (!ttyset && hp->h_bcc != ((void*)0))
   ttyset++, tcsetattr(fileno(stdin), TCSADRAIN, &ttybuf);

  hp->h_bcc =
   extract(readtty("Bcc: ", detract(hp->h_bcc, 0)), GBCC);
 }
out:
 (void)signal(SIGTSTP, savetstp);
 (void)signal(SIGTTOU, savettou);
 (void)signal(SIGTTIN, savettin);

 ttybuf.c_cc[VERASE] = c_erase;
 ttybuf.c_cc[VKILL] = c_kill;
 if (ttyset)
  tcsetattr(fileno(stdin), TCSADRAIN, &ttybuf);
 (void)signal(SIGQUIT, savequit);
 (void)signal(SIGINT, saveint);
 return (errs);
}
