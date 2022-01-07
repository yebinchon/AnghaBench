
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* cmd; char* desc; } ;


 int fprintf (int ,char*,...) ;
 TYPE_1__* functions ;
 int stderr ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void
help(const char *what)
{
    int i;

    if (what != ((void*)0)) {

 for (i = 0; functions[i].cmd != ((void*)0); i++)
     if (!strcmp(what, functions[i].cmd)) {
  fprintf(stderr, "%s\n", functions[i].desc);
  return;
     }
 fprintf(stderr, "Unknown command '%s'\n", what);
    }


    fprintf(stderr, "Valid commands are :\n");
    for (i = 0; functions[i].cmd != ((void*)0); i++)
 fprintf(stderr, "    %s\n", functions[i].cmd);
    fprintf(stderr, "Use help <command> for command-specific help\n");
}
