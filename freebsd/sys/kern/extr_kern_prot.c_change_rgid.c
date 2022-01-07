
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_rgid; } ;
typedef int gid_t ;



void
change_rgid(struct ucred *newcred, gid_t rgid)
{

 newcred->cr_rgid = rgid;
}
