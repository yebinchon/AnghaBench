
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct pipepair {int dummy; } ;
struct mac_mls {int mm_flags; } ;
struct label {int dummy; } ;


 int EPERM ;
 int MAC_MLS_FLAG_EFFECTIVE ;
 struct mac_mls* SLOT (struct label*) ;
 int mls_atmostflags (struct mac_mls*,int) ;
 scalar_t__ mls_contains_equal (struct mac_mls*) ;
 int mls_effective_in_range (struct mac_mls*,struct mac_mls*) ;
 int mls_subject_privileged (struct mac_mls*) ;

__attribute__((used)) static int
mls_pipe_check_relabel(struct ucred *cred, struct pipepair *pp,
    struct label *pplabel, struct label *newlabel)
{
 struct mac_mls *subj, *obj, *new;
 int error;

 new = SLOT(newlabel);
 subj = SLOT(cred->cr_label);
 obj = SLOT(pplabel);





 error = mls_atmostflags(new, MAC_MLS_FLAG_EFFECTIVE);
 if (error)
  return (error);





 if (!mls_effective_in_range(obj, subj))
  return (EPERM);




 if (new->mm_flags & MAC_MLS_FLAG_EFFECTIVE) {




  if (!mls_effective_in_range(new, subj))
   return (EPERM);





  if (mls_contains_equal(new)) {
   error = mls_subject_privileged(subj);
   if (error)
    return (error);
  }
 }

 return (0);
}
