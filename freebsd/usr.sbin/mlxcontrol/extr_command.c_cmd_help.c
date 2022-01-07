
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* cmd; char* text; char* desc; } ;


 TYPE_1__* commands ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int
cmd_help(int argc, char *argv[])
{
    int i;

    if (argc > 1)
 for (i = 0; commands[i].cmd != ((void*)0); i++)
     if (!strcmp(argv[1], commands[i].cmd)) {
  fprintf(stderr, "%s\n", commands[i].text);
  fflush(stderr);
  return(0);
     }

    if (argv != ((void*)0))
 fprintf(stderr, "Unknown command '%s'.\n", argv[1]);
    fprintf(stderr, "Valid commands are:\n");
    for (i = 0; commands[i].cmd != ((void*)0); i++)
 fprintf(stderr, "  %-20s %s\n", commands[i].cmd, commands[i].desc);
    fflush(stderr);
    return(0);
}
