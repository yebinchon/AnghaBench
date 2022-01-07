
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void
usage(void)
{
 (void)fprintf(stderr,
     "usage: diff [-aBbdilpTtw] [-c | -e | -f | -n | -q | -u] [--ignore-case]\n"
     "            [--no-ignore-case] [--normal] [--strip-trailing-cr] [--tabsize]\n"
     "            [-I pattern] [-L label] file1 file2\n"
     "       diff [-aBbdilpTtw] [-I pattern] [-L label] [--ignore-case]\n"
     "            [--no-ignore-case] [--normal] [--strip-trailing-cr] [--tabsize]\n"
     "            -C number file1 file2\n"
     "       diff [-aBbdiltw] [-I pattern] [--ignore-case] [--no-ignore-case]\n"
     "            [--normal] [--strip-trailing-cr] [--tabsize] -D string file1 file2\n"
     "       diff [-aBbdilpTtw] [-I pattern] [-L label] [--ignore-case]\n"
     "            [--no-ignore-case] [--normal] [--tabsize] [--strip-trailing-cr]\n"
     "            -U number file1 file2\n"
     "       diff [-aBbdilNPprsTtw] [-c | -e | -f | -n | -q | -u] [--ignore-case]\n"
     "            [--no-ignore-case] [--normal] [--tabsize] [-I pattern] [-L label]\n"
     "            [-S name] [-X file] [-x pattern] dir1 dir2\n");

 exit(2);
}
