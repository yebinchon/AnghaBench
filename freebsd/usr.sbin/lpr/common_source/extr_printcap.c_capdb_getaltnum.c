
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cgetnum (char*,char const*,long*) ;

__attribute__((used)) static int
capdb_getaltnum(char *bp, const char *shrt, const char *lng, long dflt,
    long *result)
{
 int status;

 status = cgetnum(bp, lng, result);
 if (status >= 0)
  return status;
 status = cgetnum(bp, shrt, result);
 if (status >= 0)
  return status;
 *result = dflt;
 return 0;
}
