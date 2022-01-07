
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char const) ;
 size_t short_time_len (char const*,int) ;

__attribute__((used)) static size_t fractional_time_len(const char *line, size_t len)
{
 const char *p;
 size_t n;


 if (!len || !isdigit(line[len - 1]))
  return 0;
 p = line + len - 1;


 while (p > line && isdigit(*p))
  p--;
 if (*p != '.')
  return 0;


 n = short_time_len(line, p - line);
 if (!n)
  return 0;

 return line + len - p + n;
}
