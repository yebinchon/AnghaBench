
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (char) ;

__attribute__((used)) static char *
tdecode(char *str, char **area)
{
 char *cp;
 int c;
 const char *dp;
 int i;
 char term;

 term = ':';
 cp = *area;
again:
 if (*str == '"') {
  term = '"';
  str++;
 }
 while ((c = *str++) && c != term) {
  switch (c) {

  case '^':
   c = *str++ & 037;
   break;

  case '\\':
   dp = "E\033^^\\\\::n\nr\rt\tb\bf\f\"\"";
   c = *str++;
nextc:
   if (*dp++ == c) {
    c = *dp++;
    break;
   }
   dp++;
   if (*dp)
    goto nextc;
   if (isdigit(c)) {
    c -= '0', i = 2;
    do
     c <<= 3, c |= *str++ - '0';
    while (--i && isdigit(*str));
   }
   break;
  }
  *cp++ = c;
 }
 if (c == term && term != ':') {
  term = ':';
  goto again;
 }
 *cp++ = 0;
 str = *area;
 *area = cp;
 return (str);
}
