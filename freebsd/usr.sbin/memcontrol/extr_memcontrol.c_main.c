
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* func ) (int,int,char**) ;int * cmd; } ;


 int O_RDONLY ;
 int _PATH_MEM ;
 int close (int) ;
 int err (int,char*,int ) ;
 TYPE_1__* functions ;
 int help (int *) ;
 int open (int ,int ) ;
 int strcmp (char*,int *) ;
 int stub1 (int,int,char**) ;

int
main(int argc, char *argv[])
{
    int i, memfd;

    if (argc < 2) {
 help(((void*)0));
    } else {
 if ((memfd = open(_PATH_MEM, O_RDONLY)) == -1)
     err(1, "can't open %s", _PATH_MEM);

 for (i = 0; functions[i].cmd != ((void*)0); i++)
     if (!strcmp(argv[1], functions[i].cmd))
  break;
 functions[i].func(memfd, argc - 1, argv + 1);
 close(memfd);
    }
    return(0);
}
