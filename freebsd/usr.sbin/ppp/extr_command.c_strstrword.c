
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isinword (char) ;
 int memmove (char*,char*,int) ;
 int strlen (char const*) ;
 char* strstr (char*,char const*) ;

__attribute__((used)) static char *
strstrword(char *big, const char *little)
{

  char *pos;
  int len;

  pos = big;
  len = strlen(little);

  while ((pos = strstr(pos, little)) != ((void*)0))
    if ((pos != big && isinword(pos[-1])) || isinword(pos[len]))
      pos++;
    else if (pos != big && pos[-1] == '\\')
      memmove(pos - 1, pos, strlen(pos) + 1);
    else
      break;

  return pos;
}
