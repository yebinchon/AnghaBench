
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *find_digit_prefix(const char *s, int *v)
{
 const char *p;
 int ver;
 char ch;

 for (p = s, ver = 0;
      '0' <= (ch = *p) && ch <= '9';
      p++)
  ver = ver * 10 + ch - '0';
 *v = ver;
 return p;
}
