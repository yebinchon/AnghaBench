
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int dummy; } ;


 int MAC_MLS_FLAGS_BOTH ;
 struct mac_mls* SLOT (struct label*) ;
 int mls_atmostflags (struct mac_mls*,int ) ;
 int mls_subject_privileged (struct mac_mls*) ;

__attribute__((used)) static int
mls_ifnet_check_relabel(struct ucred *cred, struct ifnet *ifp,
    struct label *ifplabel, struct label *newlabel)
{
 struct mac_mls *subj, *new;
 int error;

 subj = SLOT(cred->cr_label);
 new = SLOT(newlabel);





 error = mls_atmostflags(new, MAC_MLS_FLAGS_BOTH);
 if (error)
  return (error);




 return (mls_subject_privileged(subj));
}
