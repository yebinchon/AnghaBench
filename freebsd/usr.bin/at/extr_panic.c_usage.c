
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

void
usage(void)
{

    fprintf(stderr, "usage: at [-q x] [-f file] [-m] time\n"
      "       at -c job [job ...]\n"
      "       at [-f file] -t [[CC]YY]MMDDhhmm[.SS]\n"
      "       at -r job [job ...]\n"
      "       at -l -q queuename\n"
      "       at -l [job ...]\n"
      "       atq [-q x] [-v]\n"
      "       atrm job [job ...]\n"
      "       batch [-f file] [-m]\n");
    exit(EXIT_FAILURE);
}
