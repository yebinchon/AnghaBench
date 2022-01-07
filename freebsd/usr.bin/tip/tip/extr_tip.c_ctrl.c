
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
ctrl(char c)
{
 static char s[3];

 if (c < 040 || c == 0177) {
  s[0] = '^';
  s[1] = c == 0177 ? '?' : c+'A'-1;
  s[2] = '\0';
 } else {
  s[0] = c;
  s[1] = '\0';
 }
 return (s);
}
