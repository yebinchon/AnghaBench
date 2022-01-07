
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct vattr {int dummy; } ;
struct ucred {struct label* cr_label; } ;
struct mac_lomac {int ml_flags; int ml_auxsingle; int ml_single; } ;
struct label {int dummy; } ;
struct componentname {int dummy; } ;


 int EACCES ;
 int MAC_LOMAC_FLAG_AUX ;
 struct mac_lomac* SLOT (struct label*) ;
 int lomac_dominate_element (int *,int *) ;
 int lomac_enabled ;
 int lomac_subject_dominate (struct mac_lomac*,struct mac_lomac*) ;

__attribute__((used)) static int
lomac_vnode_check_create(struct ucred *cred, struct vnode *dvp,
    struct label *dvplabel, struct componentname *cnp, struct vattr *vap)
{
 struct mac_lomac *subj, *obj;

 if (!lomac_enabled)
  return (0);

 subj = SLOT(cred->cr_label);
 obj = SLOT(dvplabel);

 if (!lomac_subject_dominate(subj, obj))
  return (EACCES);
 if (obj->ml_flags & MAC_LOMAC_FLAG_AUX &&
     !lomac_dominate_element(&subj->ml_single, &obj->ml_auxsingle))
  return (EACCES);

 return (0);
}
