
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {struct label* cr_label; } ;
struct mac_biba {int mb_flags; } ;
struct label {int dummy; } ;


 int EPERM ;
 int MAC_BIBA_FLAG_EFFECTIVE ;
 struct mac_biba* SLOT (struct label*) ;
 int biba_atmostflags (struct mac_biba*,int) ;
 scalar_t__ biba_contains_equal (struct mac_biba*) ;
 int biba_effective_in_range (struct mac_biba*,struct mac_biba*) ;
 int biba_subject_privileged (struct mac_biba*) ;

__attribute__((used)) static int
biba_vnode_check_relabel(struct ucred *cred, struct vnode *vp,
    struct label *vplabel, struct label *newlabel)
{
 struct mac_biba *old, *new, *subj;
 int error;

 old = SLOT(vplabel);
 new = SLOT(newlabel);
 subj = SLOT(cred->cr_label);





 error = biba_atmostflags(new, MAC_BIBA_FLAG_EFFECTIVE);
 if (error)
  return (error);





 if (!biba_effective_in_range(old, subj))
  return (EPERM);




 if (new->mb_flags & MAC_BIBA_FLAG_EFFECTIVE) {




  if (!biba_effective_in_range(new, subj))
   return (EPERM);





  if (biba_contains_equal(new)) {
   error = biba_subject_privileged(subj);
   if (error)
    return (error);
  }
 }

 return (0);
}
