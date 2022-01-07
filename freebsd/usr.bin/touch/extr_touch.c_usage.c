
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void
usage(const char *myname)
{
 fprintf(stderr, "usage: %s [-A [-][[hh]mm]SS] [-achm] [-r file] "
  "[-t [[CC]YY]MMDDhhmm[.SS]]\n"
  "       [-d YYYY-MM-DDThh:mm:SS[.frac][tz]] "
  "file ...\n", myname);
 exit(1);
}
