
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {scalar_t__* cr_groups; int cr_ngroups; } ;
typedef scalar_t__ gid_t ;



int
groupmember(gid_t gid, struct ucred *cred)
{
 int l;
 int h;
 int m;

 if (cred->cr_groups[0] == gid)
  return(1);






 l = 1;
 h = cred->cr_ngroups;
 while (l < h) {
  m = l + ((h - l) / 2);
  if (cred->cr_groups[m] < gid)
   l = m + 1;
  else
   h = m;
 }
 if ((l < cred->cr_ngroups) && (cred->cr_groups[l] == gid))
  return (1);

 return (0);
}
