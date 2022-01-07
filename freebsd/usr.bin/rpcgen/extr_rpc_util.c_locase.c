
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
locase(const char *str)
{
 char c;
 static char buf[100];
 char *p = buf;

 while ( (c = *str++) ) {
  *p++ = (c >= 'A' && c <= 'Z') ? (c - 'A' + 'a') : c;
 }
 *p = 0;
 return (buf);
}
