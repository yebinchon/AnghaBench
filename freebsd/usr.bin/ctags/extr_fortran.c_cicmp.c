
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NO ;
 int YES ;
 char* lbp ;

int
cicmp(const char *cp)
{
 int len;
 char *bp;

 for (len = 0, bp = lbp; *cp && (*cp &~ ' ') == (*bp++ &~ ' ');
     ++cp, ++len)
  continue;
 if (!*cp) {
  lbp += len;
  return (YES);
 }
 return (NO);
}
