
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_svgid; } ;
typedef int gid_t ;



void
change_svgid(struct ucred *newcred, gid_t svgid)
{

 newcred->cr_svgid = svgid;
}
