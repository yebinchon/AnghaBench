
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prison {int pr_flags; int pr_ip6s; struct in6_addr* pr_ip6; struct prison* pr_parent; } ;
struct in6_addr {int dummy; } ;


 scalar_t__ IN6_ARE_ADDR_EQUAL (struct in6_addr*,struct in6_addr*) ;
 int M_NOWAIT ;
 int M_PRISON ;
 int PR_IP6_USER ;
 int bcopy (struct in6_addr*,struct in6_addr*,int) ;
 int free (struct in6_addr*,int ) ;
 struct in6_addr* malloc (int,int ,int ) ;
 int prison_qcmp_v6 (struct in6_addr*,struct in6_addr*) ;

int
prison_restrict_ip6(struct prison *pr, struct in6_addr *newip6)
{
 int ii, ij, used;
 struct prison *ppr;

 ppr = pr->pr_parent;
 if (!(pr->pr_flags & PR_IP6_USER)) {

  if (pr->pr_ip6s < ppr->pr_ip6s) {






   used = 1;
   if (newip6 == ((void*)0)) {
    newip6 = malloc(ppr->pr_ip6s * sizeof(*newip6),
        M_PRISON, M_NOWAIT);
    if (newip6 != ((void*)0))
     used = 0;
   }
   if (newip6 != ((void*)0)) {
    bcopy(ppr->pr_ip6, newip6,
        ppr->pr_ip6s * sizeof(*newip6));
    free(pr->pr_ip6, M_PRISON);
    pr->pr_ip6 = newip6;
    pr->pr_ip6s = ppr->pr_ip6s;
   }
   return (used);
  }
  pr->pr_ip6s = ppr->pr_ip6s;
  if (pr->pr_ip6s > 0)
   bcopy(ppr->pr_ip6, pr->pr_ip6,
       pr->pr_ip6s * sizeof(*newip6));
  else if (pr->pr_ip6 != ((void*)0)) {
   free(pr->pr_ip6, M_PRISON);
   pr->pr_ip6 = ((void*)0);
  }
 } else if (pr->pr_ip6s > 0) {

  for (ij = 0; ij < ppr->pr_ip6s; ij++)
   if (IN6_ARE_ADDR_EQUAL(&pr->pr_ip6[0],
       &ppr->pr_ip6[ij]))
    break;
  if (ij < ppr->pr_ip6s)
   ii = 1;
  else {
   bcopy(pr->pr_ip6 + 1, pr->pr_ip6,
       --pr->pr_ip6s * sizeof(*pr->pr_ip6));
   ii = 0;
  }
  for (ij = 1; ii < pr->pr_ip6s; ) {
   if (IN6_ARE_ADDR_EQUAL(&pr->pr_ip6[ii],
       &ppr->pr_ip6[0])) {
    ii++;
    continue;
   }
   switch (ij >= ppr->pr_ip6s ? -1 :
    prison_qcmp_v6(&pr->pr_ip6[ii], &ppr->pr_ip6[ij])) {
   case -1:
    bcopy(pr->pr_ip6 + ii + 1, pr->pr_ip6 + ii,
        (--pr->pr_ip6s - ii) * sizeof(*pr->pr_ip6));
    break;
   case 0:
    ii++;
    ij++;
    break;
   case 1:
    ij++;
    break;
   }
  }
  if (pr->pr_ip6s == 0) {
   free(pr->pr_ip6, M_PRISON);
   pr->pr_ip6 = ((void*)0);
  }
 }
 return 0;
}
