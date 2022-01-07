
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {struct label* cr_label; } ;
struct timespec {int dummy; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;


 int EACCES ;
 struct mac_lomac* SLOT (struct label*) ;
 int lomac_enabled ;
 int lomac_subject_dominate (struct mac_lomac*,struct mac_lomac*) ;

__attribute__((used)) static int
lomac_vnode_check_setutimes(struct ucred *cred, struct vnode *vp,
    struct label *vplabel, struct timespec atime, struct timespec mtime)
{
 struct mac_lomac *subj, *obj;

 if (!lomac_enabled)
  return (0);

 subj = SLOT(cred->cr_label);
 obj = SLOT(vplabel);

 if (!lomac_subject_dominate(subj, obj))
  return (EACCES);

 return (0);
}
