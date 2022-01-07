
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
    fprintf(stderr, "%s\n%s\n",
    "usage: btxld [-qv] [-b file] [-E address] [-e address] [-f format]",
    "             [-l file] [-o filename] [-P page] [-W page] file");
    exit(1);
}
