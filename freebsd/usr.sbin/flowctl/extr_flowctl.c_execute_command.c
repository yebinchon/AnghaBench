
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cmd_func ) (int,char**) ;int * cmd_name; } ;


 TYPE_1__* cmds ;
 int errx (int,char*,char*) ;
 int help () ;
 int strlen (char*) ;
 int strncmp (char*,int *,int ) ;
 int stub1 (int,char**) ;

__attribute__((used)) static void
execute_command(int argc, char **argv)
{
 int cindex = -1;
 int i;

 if (!argc)
  help();
 for (i = 0; cmds[i].cmd_name != ((void*)0); i++)
  if (!strncmp(argv[0], cmds[i].cmd_name, strlen(argv[0]))) {
   if (cindex != -1)
    errx(1, "ambiguous command: %s", argv[0]);
   cindex = i;
  }
 if (cindex == -1)
  errx(1, "bad command: %s", argv[0]);
 argc--;
 argv++;
 (*cmds[cindex].cmd_func)(argc, argv);
}
