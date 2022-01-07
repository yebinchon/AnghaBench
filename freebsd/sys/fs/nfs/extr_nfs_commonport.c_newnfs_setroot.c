
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_ngroups; scalar_t__* cr_groups; scalar_t__ cr_uid; } ;



void
newnfs_setroot(struct ucred *cred)
{

 cred->cr_uid = 0;
 cred->cr_groups[0] = 0;
 cred->cr_ngroups = 1;
}
