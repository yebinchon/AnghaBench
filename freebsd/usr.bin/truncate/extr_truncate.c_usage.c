
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr, "%s\n%s\n",
     "usage: truncate [-c] -s [+|-|%|/]size[K|k|M|m|G|g|T|t] file ...",
     "       truncate [-c] -r rfile file ...");
 exit(EXIT_FAILURE);
}
