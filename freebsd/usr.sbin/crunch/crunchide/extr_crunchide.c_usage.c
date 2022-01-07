
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 char* pname ;
 int stderr ;

void
usage(void)
{
    fprintf(stderr,
     "usage: %s [-k <symbol-name>] [-f <keep-list-file>] <files> ...\n",
     pname);
    exit(1);
}
