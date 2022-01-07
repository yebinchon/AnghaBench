
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int cr_label; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;


 int EPERM ;
 struct mac_lomac* SLOT (int ) ;
 int lomac_enabled ;
 scalar_t__ lomac_subject_privileged (struct mac_lomac*) ;

__attribute__((used)) static int
lomac_system_check_swapoff(struct ucred *cred, struct vnode *vp,
    struct label *vplabel)
{
 struct mac_lomac *subj;

 if (!lomac_enabled)
  return (0);

 subj = SLOT(cred->cr_label);

 if (lomac_subject_privileged(subj))
  return (EPERM);

 return (0);
}
