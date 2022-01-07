
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; scalar_t__ sa_flags; int sa_handler; } ;
typedef int FILE ;


 int EOF ;
 int SIGINT ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int fgetc (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ motdinterrupt ;
 int putchar (int) ;
 int sigaction (int ,struct sigaction*,struct sigaction*) ;
 int sigfillset (int *) ;
 int sigint ;

__attribute__((used)) static int
motd(const char *motdfile)
{
 struct sigaction newint, oldint;
 FILE *f;
 int ch;

 if ((f = fopen(motdfile, "r")) == ((void*)0))
  return (-1);
 motdinterrupt = 0;
 newint.sa_handler = sigint;
 newint.sa_flags = 0;
 sigfillset(&newint.sa_mask);
 sigaction(SIGINT, &newint, &oldint);
 while ((ch = fgetc(f)) != EOF && !motdinterrupt)
  putchar(ch);
 sigaction(SIGINT, &oldint, ((void*)0));
 if (ch != EOF || ferror(f)) {
  fclose(f);
  return (-1);
 }
 fclose(f);
 return (0);
}
