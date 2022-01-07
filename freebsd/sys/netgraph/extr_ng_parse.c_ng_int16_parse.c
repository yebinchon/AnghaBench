
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u_int16_t ;
typedef int u_char ;
struct ng_parse_type {int dummy; } ;
typedef long int16_t ;


 int EINVAL ;
 int bcopy (long*,int * const,int) ;
 long strtol (char const*,char**,int ) ;

__attribute__((used)) static int
ng_int16_parse(const struct ng_parse_type *type,
 const char *s, int *off, const u_char *const start,
 u_char *const buf, int *buflen)
{
 long val;
 int16_t val16;
 char *eptr;

 val = strtol(s + *off, &eptr, 0);
 if (val < (int16_t)0x8000
     || val > (u_int16_t)0xffff || eptr == s + *off)
  return (EINVAL);
 *off = eptr - s;
 val16 = (int16_t)val;
 bcopy(&val16, buf, sizeof(int16_t));
 *buflen = sizeof(int16_t);
 return (0);
}
