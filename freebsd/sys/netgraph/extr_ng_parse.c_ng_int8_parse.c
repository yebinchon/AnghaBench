
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u_int8_t ;
typedef int u_char ;
struct ng_parse_type {int dummy; } ;
typedef long int8_t ;


 int EINVAL ;
 int bcopy (long*,int * const,int) ;
 long strtol (char const*,char**,int ) ;

__attribute__((used)) static int
ng_int8_parse(const struct ng_parse_type *type,
 const char *s, int *off, const u_char *const start,
 u_char *const buf, int *buflen)
{
 long val;
 int8_t val8;
 char *eptr;

 val = strtol(s + *off, &eptr, 0);
 if (val < (int8_t)0x80 || val > (u_int8_t)0xff || eptr == s + *off)
  return (EINVAL);
 *off = eptr - s;
 val8 = (int8_t)val;
 bcopy(&val8, buf, sizeof(int8_t));
 *buflen = sizeof(int8_t);
 return (0);
}
