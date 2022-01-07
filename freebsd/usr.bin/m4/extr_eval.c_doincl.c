
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXINP ;
 int * bbase ;
 int bp ;
 int bufbase ;
 int * fopen_trypath (scalar_t__,char const*) ;
 int ilevel ;
 scalar_t__ infile ;
 int m4errx (int,char*) ;

__attribute__((used)) static int
doincl(const char *ifile)
{
 if (ilevel + 1 == MAXINP)
  m4errx(1, "too many include files.");
 if (fopen_trypath(infile+ilevel+1, ifile) != ((void*)0)) {
  ilevel++;
  bbase[ilevel] = bufbase = bp;
  return (1);
 } else
  return (0);
}
