
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
set_terminal_mode(char *arg)
{

 if (strcmp(arg, "xterm") == 0)
  fprintf(stderr, "\033[=T");
 else if (strcmp(arg, "cons25") == 0)
  fprintf(stderr, "\033[=1T");
}
