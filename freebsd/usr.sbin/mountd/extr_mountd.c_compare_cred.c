
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xucred {scalar_t__ cr_uid; scalar_t__ cr_ngroups; int cr_groups; } ;


 int COMPARE_ARRAYS (int ,int ,scalar_t__) ;

__attribute__((used)) static int
compare_cred(struct xucred *cr0, struct xucred *cr1)
{

 if (cr0->cr_uid != cr1->cr_uid || cr0->cr_ngroups != cr1->cr_ngroups)
  return (1);

 COMPARE_ARRAYS(cr0->cr_groups, cr1->cr_groups, cr0->cr_ngroups);
}
