
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {struct label* cr_label; } ;
struct mac_lomac {int ml_flags; } ;
struct label {int dummy; } ;


 int EPERM ;
 int MAC_LOMAC_FLAG_AUX ;
 int MAC_LOMAC_FLAG_SINGLE ;
 struct mac_lomac* SLOT (struct label*) ;
 int lomac_atmostflags (struct mac_lomac*,int) ;
 int lomac_auxsingle_in_range (struct mac_lomac*,struct mac_lomac*) ;
 scalar_t__ lomac_contains_equal (struct mac_lomac*) ;
 int lomac_copy_single (struct mac_lomac*,struct mac_lomac*) ;
 int lomac_single_in_range (struct mac_lomac*,struct mac_lomac*) ;
 int lomac_subject_privileged (struct mac_lomac*) ;

__attribute__((used)) static int
lomac_vnode_check_relabel(struct ucred *cred, struct vnode *vp,
    struct label *vplabel, struct label *newlabel)
{
 struct mac_lomac *old, *new, *subj;
 int error;

 old = SLOT(vplabel);
 new = SLOT(newlabel);
 subj = SLOT(cred->cr_label);





 error = lomac_atmostflags(new,
     MAC_LOMAC_FLAG_SINGLE | MAC_LOMAC_FLAG_AUX);
 if (error)
  return (error);





 if (!lomac_single_in_range(old, subj))
  return (EPERM);




 if (new->ml_flags & MAC_LOMAC_FLAG_SINGLE) {




  if (!lomac_single_in_range(new, subj))
   return (EPERM);





  if (lomac_contains_equal(new)) {
   error = lomac_subject_privileged(subj);
   if (error)
    return (error);
  }
 }
 if (new->ml_flags & MAC_LOMAC_FLAG_AUX) {



  if ((new->ml_flags & MAC_LOMAC_FLAG_SINGLE) == 0)
   lomac_copy_single(subj, new);





  if (!lomac_auxsingle_in_range(new, subj))
   return (EPERM);





  if (lomac_contains_equal(new)) {
   error = lomac_subject_privileged(subj);
   if (error)
    return (error);
  }
 }

 return (0);
}
