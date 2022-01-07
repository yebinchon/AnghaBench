
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ng_parse_type {int dummy; } ;
typedef int quad_t ;
typedef scalar_t__ int64_t ;


 int EINVAL ;
 int bcopy (scalar_t__*,int * const,int) ;
 int strtoq (char const*,char**,int ) ;

__attribute__((used)) static int
ng_int64_parse(const struct ng_parse_type *type,
 const char *s, int *off, const u_char *const start,
 u_char *const buf, int *buflen)
{
 quad_t val;
 int64_t val64;
 char *eptr;

 val = strtoq(s + *off, &eptr, 0);
 if (eptr == s + *off)
  return (EINVAL);
 *off = eptr - s;
 val64 = (int64_t)val;
 bcopy(&val64, buf, sizeof(int64_t));
 *buflen = sizeof(int64_t);
 return (0);
}
