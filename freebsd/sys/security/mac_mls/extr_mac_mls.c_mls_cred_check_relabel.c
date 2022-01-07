
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct mac_mls {int mm_flags; } ;
struct label {int dummy; } ;


 int EINVAL ;
 int EPERM ;
 int MAC_MLS_FLAGS_BOTH ;
 int MAC_MLS_FLAG_EFFECTIVE ;
 int MAC_MLS_FLAG_RANGE ;
 struct mac_mls* SLOT (struct label*) ;
 int mls_atmostflags (struct mac_mls*,int) ;
 scalar_t__ mls_contains_equal (struct mac_mls*) ;
 int mls_effective_in_range (struct mac_mls*,struct mac_mls*) ;
 int mls_range_in_range (struct mac_mls*,struct mac_mls*) ;
 int mls_subject_privileged (struct mac_mls*) ;

__attribute__((used)) static int
mls_cred_check_relabel(struct ucred *cred, struct label *newlabel)
{
 struct mac_mls *subj, *new;
 int error;

 subj = SLOT(cred->cr_label);
 new = SLOT(newlabel);





 error = mls_atmostflags(new, MAC_MLS_FLAGS_BOTH);
 if (error)
  return (error);




 if (new->mm_flags & MAC_MLS_FLAGS_BOTH) {





  if ((new->mm_flags & MAC_MLS_FLAGS_BOTH) ==
      MAC_MLS_FLAGS_BOTH && !mls_effective_in_range(new, new))
   return (EINVAL);





  if (new->mm_flags & MAC_MLS_FLAG_EFFECTIVE &&
      !mls_effective_in_range(new, subj))
   return (EPERM);





  if (new->mm_flags & MAC_MLS_FLAG_RANGE &&
      !mls_range_in_range(new, subj))
   return (EPERM);





  if (mls_contains_equal(new)) {
   error = mls_subject_privileged(subj);
   if (error)
    return (error);
  }
 }

 return (0);
}
