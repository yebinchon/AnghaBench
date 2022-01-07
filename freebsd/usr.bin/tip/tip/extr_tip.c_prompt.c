
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sig_t ;


 int EOF ;
 int SIGINT ;
 int SIGQUIT ;
 int SIG_IGN ;
 int getchar () ;
 int intprompt ;
 int printf (char*,char*) ;
 int promptbuf ;
 int raw () ;
 scalar_t__ setjmp (int ) ;
 int signal (int ,int ) ;
 scalar_t__ stoprompt ;
 int unraw () ;

int
prompt(char *s, char *p, size_t sz)
{
 int c;
 char *b = p;
 sig_t oint, oquit;

 stoprompt = 0;
 oint = signal(SIGINT, intprompt);
 oquit = signal(SIGQUIT, SIG_IGN);
 unraw();
 printf("%s", s);
 if (setjmp(promptbuf) == 0)
  while ((c = getchar()) != EOF && (*p = c) != '\n' && --sz > 0)
   p++;
 *p = '\0';

 raw();
 (void)signal(SIGINT, oint);
 (void)signal(SIGQUIT, oquit);
 return (stoprompt || p == b);
}
