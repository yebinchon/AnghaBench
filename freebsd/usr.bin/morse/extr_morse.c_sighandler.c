
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIG_DFL ;
 int TCSANOW ;
 int TIOCMSET ;
 int getpid () ;
 int ioctl (int ,int ,int *) ;
 int kill (int ,int) ;
 int line ;
 int olflags ;
 int otty ;
 int signal (int,int ) ;
 int tcsetattr (int ,int ,int *) ;

__attribute__((used)) static void
sighandler(int signo)
{

 ioctl(line, TIOCMSET, &olflags);
 tcsetattr(line, TCSANOW, &otty);

 signal(signo, SIG_DFL);
 (void)kill(getpid(), signo);
}
