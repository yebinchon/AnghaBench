
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u_int32_t ;
typedef int u_char ;
struct ng_parse_type {scalar_t__ info; } ;
typedef long int32_t ;


 int EINVAL ;
 intptr_t INT_SIGNED ;
 int bcopy (long*,int * const,int) ;
 long strtol (char const*,char**,int ) ;
 long strtoul (char const*,char**,int ) ;

__attribute__((used)) static int
ng_int32_parse(const struct ng_parse_type *type,
 const char *s, int *off, const u_char *const start,
 u_char *const buf, int *buflen)
{
 long val;
 int32_t val32;
 char *eptr;

 if ((intptr_t)type->info == INT_SIGNED)
  val = strtol(s + *off, &eptr, 0);
 else
  val = strtoul(s + *off, &eptr, 0);
 if (val < (int32_t)0x80000000
     || val > (u_int32_t)0xffffffff || eptr == s + *off)
  return (EINVAL);
 *off = eptr - s;
 val32 = (int32_t)val;
 bcopy(&val32, buf, sizeof(int32_t));
 *buflen = sizeof(int32_t);
 return (0);
}
