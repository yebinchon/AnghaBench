
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr, "%s\n%s\n%s\n",
     "usage: quota [-ghlu] [-f path] [-v | -q | -r]",
     "       quota [-hlu] [-f path] [-v | -q | -r] user ...",
     "       quota -g [-hl] [-f path] [-v | -q | -r] group ...");
 exit(1);
}
