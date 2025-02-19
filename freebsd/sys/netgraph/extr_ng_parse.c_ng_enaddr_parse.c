
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef scalar_t__ u_char ;
struct ng_parse_type {int dummy; } ;


 int EINVAL ;
 int ERANGE ;
 int ETHER_ADDR_LEN ;
 int strtoul (char const*,char**,int) ;

__attribute__((used)) static int
ng_enaddr_parse(const struct ng_parse_type *type,
 const char *s, int *const off, const u_char *const start,
 u_char *const buf, int *const buflen)
{
 char *eptr;
 u_long val;
 int i;

 if (*buflen < ETHER_ADDR_LEN)
  return (ERANGE);
 for (i = 0; i < ETHER_ADDR_LEN; i++) {
  val = strtoul(s + *off, &eptr, 16);
  if (val > 0xff || eptr == s + *off)
   return (EINVAL);
  buf[i] = (u_char)val;
  *off = (eptr - s);
  if (i < ETHER_ADDR_LEN - 1) {
   if (*eptr != ':')
    return (EINVAL);
   (*off)++;
  }
 }
 *buflen = ETHER_ADDR_LEN;
 return (0);
}
