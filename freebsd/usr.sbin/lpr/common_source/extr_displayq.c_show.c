
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump (char const*,char const*,int) ;
 int ldump (char const*,char const*,int) ;
 scalar_t__ lflag ;
 scalar_t__ strcmp (char const*,char*) ;

void
show(const char *nfile, const char *datafile, int copies)
{
 if (strcmp(nfile, " ") == 0)
  nfile = "(standard input)";
 if (lflag)
  ldump(nfile, datafile, copies);
 else
  dump(nfile, datafile, copies);
}
