
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;



__attribute__((used)) static bool
mem_iszero(void *dat, int len)
{
 int i;
 const u_int *p;
 const char *cp;

 for (p = dat; len > 0; len -= sizeof(*p), p++) {
  if (len >= sizeof(*p)) {
   if (*p != 0)
    return (0);
  } else {
   cp = (const char *)p;
   for (i = 0; i < len; i++, cp++)
    if (*cp != '\0')
     return (0);
  }
 }
 return (1);
}
