
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cgetcap (char*,char const*,char) ;

__attribute__((used)) static int
capdb_getaltlog(char *bp, const char *shrt, const char *lng)
{
 if (cgetcap(bp, lng, ':'))
  return 1;
 if (cgetcap(bp, shrt, ':'))
  return 1;
 return 0;
}
