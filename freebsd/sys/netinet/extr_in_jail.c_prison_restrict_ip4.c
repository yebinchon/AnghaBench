
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prison {int pr_flags; int pr_ip4s; struct in_addr* pr_ip4; struct prison* pr_parent; } ;
struct in_addr {scalar_t__ s_addr; } ;


 int M_NOWAIT ;
 int M_PRISON ;
 int PR_IP4_USER ;
 int bcopy (struct in_addr*,struct in_addr*,int) ;
 int free (struct in_addr*,int ) ;
 struct in_addr* malloc (int,int ,int ) ;
 int prison_qcmp_v4 (struct in_addr*,struct in_addr*) ;

int
prison_restrict_ip4(struct prison *pr, struct in_addr *newip4)
{
 int ii, ij, used;
 struct prison *ppr;

 ppr = pr->pr_parent;
 if (!(pr->pr_flags & PR_IP4_USER)) {

  if (pr->pr_ip4s < ppr->pr_ip4s) {






   used = 1;
   if (newip4 == ((void*)0)) {
    newip4 = malloc(ppr->pr_ip4s * sizeof(*newip4),
        M_PRISON, M_NOWAIT);
    if (newip4 != ((void*)0))
     used = 0;
   }
   if (newip4 != ((void*)0)) {
    bcopy(ppr->pr_ip4, newip4,
        ppr->pr_ip4s * sizeof(*newip4));
    free(pr->pr_ip4, M_PRISON);
    pr->pr_ip4 = newip4;
    pr->pr_ip4s = ppr->pr_ip4s;
   }
   return (used);
  }
  pr->pr_ip4s = ppr->pr_ip4s;
  if (pr->pr_ip4s > 0)
   bcopy(ppr->pr_ip4, pr->pr_ip4,
       pr->pr_ip4s * sizeof(*newip4));
  else if (pr->pr_ip4 != ((void*)0)) {
   free(pr->pr_ip4, M_PRISON);
   pr->pr_ip4 = ((void*)0);
  }
 } else if (pr->pr_ip4s > 0) {

  for (ij = 0; ij < ppr->pr_ip4s; ij++)
   if (pr->pr_ip4[0].s_addr == ppr->pr_ip4[ij].s_addr)
    break;
  if (ij < ppr->pr_ip4s)
   ii = 1;
  else {
   bcopy(pr->pr_ip4 + 1, pr->pr_ip4,
       --pr->pr_ip4s * sizeof(*pr->pr_ip4));
   ii = 0;
  }
  for (ij = 1; ii < pr->pr_ip4s; ) {
   if (pr->pr_ip4[ii].s_addr == ppr->pr_ip4[0].s_addr) {
    ii++;
    continue;
   }
   switch (ij >= ppr->pr_ip4s ? -1 :
    prison_qcmp_v4(&pr->pr_ip4[ii], &ppr->pr_ip4[ij])) {
   case -1:
    bcopy(pr->pr_ip4 + ii + 1, pr->pr_ip4 + ii,
        (--pr->pr_ip4s - ii) * sizeof(*pr->pr_ip4));
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
  if (pr->pr_ip4s == 0) {
   free(pr->pr_ip4, M_PRISON);
   pr->pr_ip4 = ((void*)0);
  }
 }
 return (0);
}
