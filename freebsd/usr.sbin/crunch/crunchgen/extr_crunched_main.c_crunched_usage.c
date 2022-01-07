
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stub {char* name; } ;


 char* EXECNAME ;
 struct stub* entry_points ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int strlen (char*) ;

__attribute__((used)) static void
crunched_usage()
{
    int columns, len;
    struct stub *ep;

    fprintf(stderr, "usage: %s <prog> <args> ..., where <prog> is one of:\n",
     EXECNAME);
    columns = 0;
    for(ep=entry_points; ep->name != ((void*)0); ep++) {
 len = strlen(ep->name) + 1;
 if(columns+len < 80)
     columns += len;
 else {
     fprintf(stderr, "\n");
     columns = len;
 }
 fprintf(stderr, " %s", ep->name);
    }
    fprintf(stderr, "\n");
    exit(1);
}
