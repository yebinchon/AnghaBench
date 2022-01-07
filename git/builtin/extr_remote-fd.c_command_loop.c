
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXCOMMAND ;
 scalar_t__ bidirectional_transfer_loop (int,int) ;
 int die (char*,...) ;
 scalar_t__ ferror (int ) ;
 int fflush (int ) ;
 int fgets (char*,int,int ) ;
 scalar_t__ isspace (char) ;
 int printf (char*) ;
 int stdin ;
 int stdout ;
 int strcmp (char*,char*) ;
 size_t strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static void command_loop(int input_fd, int output_fd)
{
 char buffer[MAXCOMMAND];

 while (1) {
  size_t i;
  if (!fgets(buffer, MAXCOMMAND - 1, stdin)) {
   if (ferror(stdin))
    die("Input error");
   return;
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
   if (bidirectional_transfer_loop(input_fd,
    output_fd))
    die("Copying data between file descriptors failed");
   return;
  } else {
   die("Bad command: %s", buffer);
  }
 }
}
