
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct socket {int dummy; } ;
struct mac_lomac {int ml_flags; } ;
struct label {int dummy; } ;


 int EPERM ;
 int MAC_LOMAC_FLAG_SINGLE ;
 struct mac_lomac* SLOT (struct label*) ;
 int SOCK_LOCK_ASSERT (struct socket*) ;
 int lomac_atmostflags (struct mac_lomac*,int) ;
 scalar_t__ lomac_contains_equal (struct mac_lomac*) ;
 int lomac_single_in_range (struct mac_lomac*,struct mac_lomac*) ;
 int lomac_subject_privileged (struct mac_lomac*) ;

__attribute__((used)) static int
lomac_socket_check_relabel(struct ucred *cred, struct socket *so,
    struct label *solabel, struct label *newlabel)
{
 struct mac_lomac *subj, *obj, *new;
 int error;

 SOCK_LOCK_ASSERT(so);

 new = SLOT(newlabel);
 subj = SLOT(cred->cr_label);
 obj = SLOT(solabel);





 error = lomac_atmostflags(new, MAC_LOMAC_FLAG_SINGLE);
 if (error)
  return (error);





 if (!lomac_single_in_range(obj, subj))
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

 return (0);
}
