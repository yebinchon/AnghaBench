
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prison {int pr_ip4s; TYPE_1__* pr_ip4; } ;
struct in_addr {scalar_t__ s_addr; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;


 int EADDRNOTAVAIL ;
 int prison_qcmp_v4 (TYPE_1__*,struct in_addr const*) ;

int
prison_check_ip4_locked(const struct prison *pr, const struct in_addr *ia)
{
 int i, a, z, d;




 if (pr->pr_ip4[0].s_addr == ia->s_addr)
  return (0);




 a = 0;
 z = pr->pr_ip4s - 2;
 while (a <= z) {
  i = (a + z) / 2;
  d = prison_qcmp_v4(&pr->pr_ip4[i+1], ia);
  if (d > 0)
   z = i - 1;
  else if (d < 0)
   a = i + 1;
  else
   return (0);
 }

 return (EADDRNOTAVAIL);
}
