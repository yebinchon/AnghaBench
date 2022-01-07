
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,long,...) ;

__attribute__((used)) static void
stat_seconds(char *str, size_t strsz, long seconds)
{

 if (seconds > 86400)
  snprintf(str, strsz, "%02ldd%02ldh",
      seconds / 86400, (seconds % 86400) / 3600);
 else if (seconds > 3600)
  snprintf(str, strsz, "%02ldh%02ldm",
      seconds / 3600, (seconds % 3600) / 60);
 else if (seconds > 60)
  snprintf(str, strsz, "%02ldm%02lds",
      seconds / 60, seconds % 60);
 else
  snprintf(str, strsz, "   %02lds",
      seconds);
}
