
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prison {int pr_ip6s; int * pr_ip6; } ;
struct in6_addr {int dummy; } ;


 int EADDRNOTAVAIL ;
 scalar_t__ IN6_ARE_ADDR_EQUAL (int *,struct in6_addr const*) ;
 int prison_qcmp_v6 (int *,struct in6_addr const*) ;

int
prison_check_ip6_locked(const struct prison *pr, const struct in6_addr *ia6)
{
 int i, a, z, d;




 if (IN6_ARE_ADDR_EQUAL(&pr->pr_ip6[0], ia6))
  return (0);




 a = 0;
 z = pr->pr_ip6s - 2;
 while (a <= z) {
  i = (a + z) / 2;
  d = prison_qcmp_v6(&pr->pr_ip6[i+1], ia6);
  if (d > 0)
   z = i - 1;
  else if (d < 0)
   a = i + 1;
  else
   return (0);
 }

 return (EADDRNOTAVAIL);
}
