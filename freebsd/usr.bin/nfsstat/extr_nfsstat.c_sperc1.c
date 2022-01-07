
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quad_t ;


 char** SPBuf ;
 size_t SPIndex ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static char *
sperc1(int hits, int misses)
{
 char *p = SPBuf[SPIndex];

 if (hits + misses) {
  sprintf(p, "%3d%%",
      (int)(char)((quad_t)hits * 100 / (hits + misses)));
 } else {
  sprintf(p, "   -");
 }
 SPIndex = (SPIndex + 1) & 63;
 return(p);
}
