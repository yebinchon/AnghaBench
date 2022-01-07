
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (char const) ;
 size_t strlen (char*) ;

__attribute__((used)) static size_t sane_tz_len(const char *line, size_t len)
{
 const char *tz, *p;

 if (len < strlen(" +0500") || line[len-strlen(" +0500")] != ' ')
  return 0;
 tz = line + len - strlen(" +0500");

 if (tz[1] != '+' && tz[1] != '-')
  return 0;

 for (p = tz + 2; p != line + len; p++)
  if (!isdigit(*p))
   return 0;

 return line + len - tz;
}
