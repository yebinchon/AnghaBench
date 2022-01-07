
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct mac_lomac {int ml_flags; } ;
struct label {int dummy; } ;


 int EPERM ;
 int MAC_LOMAC_FLAGS_BOTH ;
 int MAC_LOMAC_FLAG_RANGE ;
 int MAC_LOMAC_FLAG_SINGLE ;
 struct mac_lomac* SLOT (struct label*) ;
 int lomac_atmostflags (struct mac_lomac*,int) ;
 scalar_t__ lomac_contains_equal (struct mac_lomac*) ;
 int lomac_copy_range (struct mac_lomac*,struct mac_lomac*) ;
 int lomac_copy_single (struct mac_lomac*,struct mac_lomac*) ;
 int lomac_range_in_range (struct mac_lomac*,struct mac_lomac*) ;
 int lomac_single_in_range (struct mac_lomac*,struct mac_lomac*) ;
 int lomac_subject_privileged (struct mac_lomac*) ;

__attribute__((used)) static int
lomac_cred_check_relabel(struct ucred *cred, struct label *newlabel)
{
 struct mac_lomac *subj, *new;
 int error;

 subj = SLOT(cred->cr_label);
 new = SLOT(newlabel);





 error = lomac_atmostflags(new, MAC_LOMAC_FLAGS_BOTH);
 if (error)
  return (error);




 if (new->ml_flags & MAC_LOMAC_FLAGS_BOTH) {



  if ((new->ml_flags & MAC_LOMAC_FLAG_SINGLE) == 0)
   lomac_copy_single(subj, new);
  if ((new->ml_flags & MAC_LOMAC_FLAG_RANGE) == 0)
   lomac_copy_range(subj, new);





  if (!lomac_range_in_range(new, subj))
   return (EPERM);






  if (!lomac_single_in_range(new, new))
   return (EPERM);





  if (lomac_contains_equal(new)) {
   error = lomac_subject_privileged(subj);
   if (error)
    return (error);
  }





 }

 return (0);
}
