
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int SIG_IGN ;
 int longjmp (int ,int) ;
 int printf (char*) ;
 int promptbuf ;
 int signal (int ,int ) ;
 int stoprompt ;

__attribute__((used)) static void
intprompt(int signo)
{
 (void)signal(SIGINT, SIG_IGN);
 stoprompt = 1;
 printf("\r\n");
 longjmp(promptbuf, 1);
}
