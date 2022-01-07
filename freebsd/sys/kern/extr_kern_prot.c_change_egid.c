
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int * cr_groups; } ;
typedef int gid_t ;



void
change_egid(struct ucred *newcred, gid_t egid)
{

 newcred->cr_groups[0] = egid;
}
