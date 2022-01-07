
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
struct pf_addr {int* addr32; } ;
typedef int sa_family_t ;





int
pf_match_addr(u_int8_t n, struct pf_addr *a, struct pf_addr *m,
    struct pf_addr *b, sa_family_t af)
{
 int match = 0;

 switch (af) {
 }
 if (match) {
  if (n)
   return (0);
  else
   return (1);
 } else {
  if (n)
   return (1);
  else
   return (0);
 }
}
