
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {struct label* cr_label; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;


 int EACCES ;
 int EPERM ;
 struct mac_lomac* SLOT (struct label*) ;
 int lomac_enabled ;
 int lomac_high_single (struct mac_lomac*) ;
 scalar_t__ lomac_subject_privileged (struct mac_lomac*) ;

__attribute__((used)) static int
lomac_system_check_swapon(struct ucred *cred, struct vnode *vp,
    struct label *vplabel)
{
 struct mac_lomac *subj, *obj;

 if (!lomac_enabled)
  return (0);

 subj = SLOT(cred->cr_label);
 obj = SLOT(vplabel);

 if (lomac_subject_privileged(subj))
  return (EPERM);

 if (!lomac_high_single(obj))
  return (EACCES);

 return (0);
}
