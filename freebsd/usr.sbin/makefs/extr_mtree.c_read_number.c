
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef scalar_t__ intmax_t ;


 int EDOM ;
 int EINVAL ;
 scalar_t__ strtoimax (char const*,char**,int ) ;

__attribute__((used)) static int
read_number(const char *tok, u_int base, intmax_t *res, intmax_t min,
    intmax_t max)
{
 char *end;
 intmax_t val;

 val = strtoimax(tok, &end, base);
 if (end == tok || end[0] != '\0')
  return (EINVAL);
 if (val < min || val > max)
  return (EDOM);
 *res = val;
 return (0);
}
