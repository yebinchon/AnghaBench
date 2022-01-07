
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
warn_eof(void)
{
 fprintf(stderr,
  "The \"eof\" command has been disabled.\n"
  "Use \"weof\" if you really want to write end-of-file marks,\n"
  "or \"eom\" if you rather want to skip to the end of "
  "recorded medium.\n");
 exit(1);
}
