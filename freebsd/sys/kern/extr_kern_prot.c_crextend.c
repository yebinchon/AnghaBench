
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_agroups; scalar_t__ cr_groups; scalar_t__ cr_smallgroups; } ;
typedef int gid_t ;


 int MINALLOCSIZE ;
 int M_CRED ;
 int M_WAITOK ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int free (scalar_t__,int ) ;
 scalar_t__ malloc (int,int ,int) ;
 int roundup2 (int,int) ;

void
crextend(struct ucred *cr, int n)
{
 int cnt;


 if (n <= cr->cr_agroups)
  return;
 if ( n < PAGE_SIZE / sizeof(gid_t) ) {
  if (cr->cr_agroups == 0)
   cnt = MINALLOCSIZE / sizeof(gid_t);
  else
   cnt = cr->cr_agroups * 2;

  while (cnt < n)
   cnt *= 2;
 } else
  cnt = roundup2(n, PAGE_SIZE / sizeof(gid_t));


 if (cr->cr_groups != cr->cr_smallgroups)
  free(cr->cr_groups, M_CRED);

 cr->cr_groups = malloc(cnt * sizeof(gid_t), M_CRED, M_WAITOK | M_ZERO);
 cr->cr_agroups = cnt;
}
