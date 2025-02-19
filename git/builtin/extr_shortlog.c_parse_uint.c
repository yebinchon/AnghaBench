
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long INT_MAX ;
 unsigned long strtoul (char const*,char**,int) ;

__attribute__((used)) static int parse_uint(char const **arg, int comma, int defval)
{
 unsigned long ul;
 int ret;
 char *endp;

 ul = strtoul(*arg, &endp, 10);
 if (*endp && *endp != comma)
  return -1;
 if (ul > INT_MAX)
  return -1;
 ret = *arg == endp ? defval : (int)ul;
 *arg = *endp ? endp + 1 : endp;
 return ret;
}
