
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
 (void)fprintf(stderr, "%s\n%s\n%s\n",
  "usage: cut -b list [-n] [file ...]",
  "       cut -c list [file ...]",
  "       cut -f list [-s] [-w | -d delim] [file ...]");
 exit(1);
}
