
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stub {int (* f ) (int,char**,char**) ;int * name; } ;


 char* EXECNAME ;
 int crunched_usage () ;
 struct stub* entry_points ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;
 int strcmp (char*,int *) ;
 char* strrchr (char*,char) ;
 int stub1 (int,char**,char**) ;

int
main(int argc, char **argv, char **envp)
{
    char *slash, *basename;
    struct stub *ep;

    if(argv[0] == ((void*)0) || *argv[0] == '\0')
 crunched_usage();

    slash = strrchr(argv[0], '/');
    basename = slash? slash+1 : argv[0];

    for(ep=entry_points; ep->name != ((void*)0); ep++)
 if(!strcmp(basename, ep->name)) break;

    if(ep->name)
 return ep->f(argc, argv, envp);
    else {
 fprintf(stderr, "%s: %s not compiled in\n", EXECNAME, basename);
 crunched_usage();
    }
}
