
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
chat_NextChar(char *ptr, char ch)
{
  for (; *ptr; ptr++)
    if (*ptr == ch)
      return ptr;
    else if (*ptr == '\\')
      if (*++ptr == '\0')
        return ((void*)0);

  return ((void*)0);
}
