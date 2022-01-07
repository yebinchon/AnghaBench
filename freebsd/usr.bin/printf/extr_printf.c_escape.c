
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
escape(char *fmt, int percent, size_t *len)
{
 char *save, *store, c;
 int value;

 for (save = store = fmt; ((c = *fmt) != 0); ++fmt, ++store) {
  if (c != '\\') {
   *store = c;
   continue;
  }
  switch (*++fmt) {
  case '\0':
   *store = '\\';
   *++store = '\0';
   *len = store - save;
   return (0);
  case '\\':
  case '\'':
   *store = *fmt;
   break;
  case 'a':
   *store = '\a';
   break;
  case 'b':
   *store = '\b';
   break;
  case 'c':
   if (!percent) {
    *store = '\0';
    *len = store - save;
    return (1);
   }
   *store = 'c';
   break;
  case 'f':
   *store = '\f';
   break;
  case 'n':
   *store = '\n';
   break;
  case 'r':
   *store = '\r';
   break;
  case 't':
   *store = '\t';
   break;
  case 'v':
   *store = '\v';
   break;

  case '0': case '1': case '2': case '3':
  case '4': case '5': case '6': case '7':
   c = (!percent && *fmt == '0') ? 4 : 3;
   for (value = 0;
       c-- && *fmt >= '0' && *fmt <= '7'; ++fmt) {
    value <<= 3;
    value += *fmt - '0';
   }
   --fmt;
   if (percent && value == '%') {
    *store++ = '%';
    *store = '%';
   } else
    *store = (char)value;
   break;
  default:
   *store = *fmt;
   break;
  }
 }
 *store = '\0';
 *len = store - save;
 return (0);
}
