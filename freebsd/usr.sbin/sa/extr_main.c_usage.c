
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
 (void)fprintf(stderr,
  "usage: sa [-abcdDfijkKlmnqrstu] [-P file] [-U file] [-v cutoff] [file ...]\n");
 exit(1);
}
