
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXCOMMAND ;
 int die (char*) ;
 int exit (int ) ;
 scalar_t__ ferror (int ) ;
 int fflush (int ) ;
 int fgets (char*,int,int ) ;
 int fprintf (int ,char*) ;
 scalar_t__ isspace (char) ;
 int printf (char*) ;
 int run_child (char const*,char*) ;
 int stderr ;
 int stdin ;
 int stdout ;
 int strcmp (char*,char*) ;
 size_t strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int command_loop(const char *child)
{
 char buffer[MAXCOMMAND];

 while (1) {
  size_t i;
  if (!fgets(buffer, MAXCOMMAND - 1, stdin)) {
   if (ferror(stdin))
    die("Command input error");
   exit(0);
  }

  i = strlen(buffer);
  while (i > 0 && isspace(buffer[i - 1]))
   buffer[--i] = 0;

  if (!strcmp(buffer, "capabilities")) {
   printf("*connect\n\n");
   fflush(stdout);
  } else if (!strncmp(buffer, "connect ", 8)) {
   printf("\n");
   fflush(stdout);
   return run_child(child, buffer + 8);
  } else {
   fprintf(stderr, "Bad command");
   return 1;
  }
 }
}
