
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quad_t ;


 char** SPBuf ;
 size_t SPIndex ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static char *
sperc2(int ttl, int misses)
{
 char *p = SPBuf[SPIndex];

 if (ttl) {
  sprintf(p, "%3d%%",
      (int)(char)((quad_t)(ttl - misses) * 100 / ttl));
 } else {
  sprintf(p, "   -");
 }
 SPIndex = (SPIndex + 1) & 63;
 return(p);
}
