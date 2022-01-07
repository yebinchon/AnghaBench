
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int args ;


 int STDIN_FILENO ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int read (int ,char*,int) ;
 int run_cmd (unsigned int,char**,char const*) ;
 int stdout ;
 int strcmp (char*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
run_cmd_loop(int argc, char *argv[], const char *iff_name)
{
 int n;
 unsigned int i;
 char buf[64];
 char *args[8], *s;

 (void) argc;
 args[0] = argv[0];
 args[1] = argv[1];







 for (;;) {
  fprintf(stdout, "> ");
  fflush(stdout);
  n = read(STDIN_FILENO, buf, sizeof(buf) - 1);
  if (n <= 0)
   return (0);

  if (buf[--n] != '\n')
   continue;
  else
   buf[n] = 0;

  s = &buf[0];
  for (i = 2; i < sizeof(args)/sizeof(args[0]) - 1; i++) {
   while (s && (*s == ' ' || *s == '\t'))
    s++;
   if ((args[i] = strsep(&s, " \t")) == ((void*)0))
    break;
  }
  args[sizeof(args)/sizeof(args[0]) - 1] = 0;

  if (!strcmp(args[2], "quit") || !strcmp(args[2], "exit"))
   return (0);

  (void) run_cmd(i, args, iff_name);
 }


 return (0);
}
