
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {scalar_t__* s6_addr; } ;



int
prison_qcmp_v6(const void *ip1, const void *ip2)
{
 const struct in6_addr *ia6a, *ia6b;
 int i, rc;

 ia6a = (const struct in6_addr *)ip1;
 ia6b = (const struct in6_addr *)ip2;

 rc = 0;
 for (i = 0; rc == 0 && i < sizeof(struct in6_addr); i++) {
  if (ia6a->s6_addr[i] > ia6b->s6_addr[i])
   rc = 1;
  else if (ia6a->s6_addr[i] < ia6b->s6_addr[i])
   rc = -1;
 }
 return (rc);
}
