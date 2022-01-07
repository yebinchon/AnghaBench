
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int MAX_ARGS ;
 int errno ;
 scalar_t__ ferror (int ) ;
 int fflush (int ) ;
 char* fgets (char*,int,int ) ;
 int fprintf (int ,char*) ;
 int run_cmd (int,char const**) ;
 int stdin ;
 int stdout ;
 int strcmp (char const*,char*) ;
 char* strsep (char**,char*) ;
 int warn (char*) ;

__attribute__((used)) static int
run_cmd_loop(void)
{
 int i, rc = 0;
 char buffer[128], *buf;
 const char *args[MAX_ARGS + 1];






 for (;;) {
  fprintf(stdout, "> ");
  fflush(stdout);
  buf = fgets(buffer, sizeof(buffer), stdin);
  if (buf == ((void*)0)) {
   if (ferror(stdin)) {
    warn("stdin error");
    rc = errno;
   }
   break;
  }

  i = 0;
  while ((args[i] = strsep(&buf, " \t\n")) != ((void*)0)) {
   if (args[i][0] != 0 && ++i == MAX_ARGS)
    break;
  }
  args[i] = 0;

  if (i == 0)
   continue;

  if (!strcmp(args[0], "quit") || !strcmp(args[0], "exit"))
   break;

  rc = run_cmd(i, args);
 }


 return (rc);
}
