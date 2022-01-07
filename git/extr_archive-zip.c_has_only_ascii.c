
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isascii (int) ;

__attribute__((used)) static int has_only_ascii(const char *s)
{
 for (;;) {
  int c = *s++;
  if (c == '\0')
   return 1;
  if (!isascii(c))
   return 0;
 }
}
