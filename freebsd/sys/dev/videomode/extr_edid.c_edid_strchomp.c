
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
edid_strchomp(char *ptr)
{
 for (;;) {
  switch (*ptr) {
  case '\0':
   return;
  case '\r':
  case '\n':
   *ptr = '\0';
   return;
  }
  ptr++;
 }
}
