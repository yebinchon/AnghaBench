
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct mac_biba {int mb_flags; } ;
struct label {int dummy; } ;


 int EINVAL ;
 int EPERM ;
 int MAC_BIBA_FLAGS_BOTH ;
 int MAC_BIBA_FLAG_EFFECTIVE ;
 int MAC_BIBA_FLAG_RANGE ;
 struct mac_biba* SLOT (struct label*) ;
 int biba_atmostflags (struct mac_biba*,int) ;
 scalar_t__ biba_contains_equal (struct mac_biba*) ;
 int biba_effective_in_range (struct mac_biba*,struct mac_biba*) ;
 int biba_range_in_range (struct mac_biba*,struct mac_biba*) ;
 int biba_subject_privileged (struct mac_biba*) ;

__attribute__((used)) static int
biba_cred_check_relabel(struct ucred *cred, struct label *newlabel)
{
 struct mac_biba *subj, *new;
 int error;

 subj = SLOT(cred->cr_label);
 new = SLOT(newlabel);





 error = biba_atmostflags(new, MAC_BIBA_FLAGS_BOTH);
 if (error)
  return (error);




 if (new->mb_flags & MAC_BIBA_FLAGS_BOTH) {





  if ((new->mb_flags & MAC_BIBA_FLAGS_BOTH) ==
      MAC_BIBA_FLAGS_BOTH &&
      !biba_effective_in_range(new, new))
   return (EINVAL);





  if (new->mb_flags & MAC_BIBA_FLAG_EFFECTIVE &&
      !biba_effective_in_range(new, subj))
   return (EPERM);





  if (new->mb_flags & MAC_BIBA_FLAG_RANGE &&
      !biba_range_in_range(new, subj))
   return (EPERM);





  if (biba_contains_equal(new)) {
   error = biba_subject_privileged(subj);
   if (error)
    return (error);
  }
 }

 return (0);
}
