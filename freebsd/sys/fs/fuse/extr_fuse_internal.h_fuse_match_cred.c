
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {scalar_t__ cr_uid; scalar_t__ cr_ruid; scalar_t__ cr_svuid; scalar_t__* cr_groups; scalar_t__ cr_rgid; scalar_t__ cr_svgid; } ;


 int EPERM ;

__attribute__((used)) static inline int
fuse_match_cred(struct ucred *basecred, struct ucred *usercred)
{
 if (basecred->cr_uid == usercred->cr_uid &&
     basecred->cr_uid == usercred->cr_ruid &&
     basecred->cr_uid == usercred->cr_svuid &&
     basecred->cr_groups[0] == usercred->cr_groups[0] &&
     basecred->cr_groups[0] == usercred->cr_rgid &&
     basecred->cr_groups[0] == usercred->cr_svgid)
  return (0);

 return (EPERM);
}
