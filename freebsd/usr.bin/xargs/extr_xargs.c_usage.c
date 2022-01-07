
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr,
"usage: xargs [-0opt] [-E eofstr] [-I replstr [-R replacements] [-S replsize]]\n"
"             [-J replstr] [-L number] [-n number [-x]] [-P maxprocs]\n"
"             [-s size] [utility [argument ...]]\n");
 exit(1);
}
