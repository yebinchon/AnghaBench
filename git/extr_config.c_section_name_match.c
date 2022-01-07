
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char const) ;

__attribute__((used)) static int section_name_match (const char *buf, const char *name)
{
 int i = 0, j = 0, dot = 0;
 if (buf[i] != '[')
  return 0;
 for (i = 1; buf[i] && buf[i] != ']'; i++) {
  if (!dot && isspace(buf[i])) {
   dot = 1;
   if (name[j++] != '.')
    break;
   for (i++; isspace(buf[i]); i++)
    ;
   if (buf[i] != '"')
    break;
   continue;
  }
  if (buf[i] == '\\' && dot)
   i++;
  else if (buf[i] == '"' && dot) {
   for (i++; isspace(buf[i]); i++)
    ;
   break;
  }
  if (buf[i] != name[j++])
   break;
 }
 if (buf[i] == ']' && name[j] == 0) {




  i++;
  for (; buf[i] && isspace(buf[i]); i++)
   ;
  return i;
 }
 return 0;
}
