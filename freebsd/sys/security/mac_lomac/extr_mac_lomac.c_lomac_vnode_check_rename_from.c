
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {struct label* cr_label; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;
struct componentname {int dummy; } ;


 int EACCES ;
 struct mac_lomac* SLOT (struct label*) ;
 int lomac_enabled ;
 int lomac_subject_dominate (struct mac_lomac*,struct mac_lomac*) ;

__attribute__((used)) static int
lomac_vnode_check_rename_from(struct ucred *cred, struct vnode *dvp,
    struct label *dvplabel, struct vnode *vp, struct label *vplabel,
    struct componentname *cnp)
{
 struct mac_lomac *subj, *obj;

 if (!lomac_enabled)
  return (0);

 subj = SLOT(cred->cr_label);
 obj = SLOT(dvplabel);

 if (!lomac_subject_dominate(subj, obj))
  return (EACCES);

 obj = SLOT(vplabel);

 if (!lomac_subject_dominate(subj, obj))
  return (EACCES);

 return (0);
}
