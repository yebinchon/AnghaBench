
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
usage(const char *progname)
{

 if (strcmp(progname, "rtsold") == 0) {
  fprintf(stderr, "usage: rtsold [-dDfFm1] [-O script-name] "
      "[-p pidfile] [-R script-name] interface ...\n");
  fprintf(stderr, "usage: rtsold [-dDfFm1] [-O script-name] "
      "[-p pidfile] [-R script-name] -a\n");
 } else {
  fprintf(stderr, "usage: rtsol [-dDF] [-O script-name] "
      "[-p pidfile] [-R script-name] interface ...\n");
  fprintf(stderr, "usage: rtsol [-dDF] [-O script-name] "
      "[-p pidfile] [-R script-name] -a\n");
 }
 exit(1);
}
