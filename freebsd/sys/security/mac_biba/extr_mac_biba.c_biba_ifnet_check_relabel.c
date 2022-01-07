
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int dummy; } ;


 int MAC_BIBA_FLAGS_BOTH ;
 struct mac_biba* SLOT (struct label*) ;
 int biba_atmostflags (struct mac_biba*,int ) ;
 int biba_subject_privileged (struct mac_biba*) ;

__attribute__((used)) static int
biba_ifnet_check_relabel(struct ucred *cred, struct ifnet *ifp,
    struct label *ifplabel, struct label *newlabel)
{
 struct mac_biba *subj, *new;
 int error;

 subj = SLOT(cred->cr_label);
 new = SLOT(newlabel);





 error = biba_atmostflags(new, MAC_BIBA_FLAGS_BOTH);
 if (error)
  return (error);




 error = biba_subject_privileged(subj);
 if (error)
  return (error);

 return (0);
}
