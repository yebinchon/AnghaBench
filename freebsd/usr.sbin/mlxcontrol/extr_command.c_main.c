
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* func ) (int,char**) ;int * cmd; } ;


 int cmd_help (int,char**) ;
 TYPE_1__* commands ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int strcmp (char*,int *) ;
 int stub1 (int,char**) ;

int
main(int argc, char *argv[])
{
    int ch, i, oargc;
    char **oargv;

    oargc = argc;
    oargv = argv;
    while ((ch = getopt(argc, argv, "")) != -1)
 switch(ch) {
 default:
     return(cmd_help(0, ((void*)0)));
 }

    argc -= optind;
    argv += optind;

    if (argc > 0)
 for (i = 0; commands[i].cmd != ((void*)0); i++)
     if (!strcmp(argv[0], commands[i].cmd))
  return(commands[i].func(argc, argv));

    return(cmd_help(oargc, oargv));
}
