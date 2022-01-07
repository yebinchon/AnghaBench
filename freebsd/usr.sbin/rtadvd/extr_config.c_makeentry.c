
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,char const*,int) ;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static void
makeentry(char *buf, size_t len, int id, const char *string)
{

 if (id < 0)
  strlcpy(buf, string, len);
 else
  snprintf(buf, len, "%s%d", string, id);
}
