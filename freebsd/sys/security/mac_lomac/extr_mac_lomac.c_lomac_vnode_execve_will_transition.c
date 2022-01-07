
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {struct label* cr_label; } ;
struct mac_lomac {int ml_flags; int ml_single; int ml_auxsingle; } ;
struct label {int dummy; } ;
struct image_params {int dummy; } ;


 int MAC_LOMAC_FLAG_AUX ;
 struct mac_lomac* SLOT (struct label*) ;
 scalar_t__ lomac_auxsingle_in_range (struct mac_lomac*,struct mac_lomac*) ;
 int lomac_dominate_element (int *,int *) ;
 int lomac_dominate_single (struct mac_lomac*,struct mac_lomac*) ;
 int lomac_enabled ;
 int revocation_enabled ;

__attribute__((used)) static int
lomac_vnode_execve_will_transition(struct ucred *old, struct vnode *vp,
    struct label *vplabel, struct label *interpvplabel,
    struct image_params *imgp, struct label *execlabel)
{
 struct mac_lomac *subj, *obj, *robj;

 if (!lomac_enabled || !revocation_enabled)
  return (0);

 subj = SLOT(old->cr_label);
 obj = SLOT(vplabel);
 robj = interpvplabel != ((void*)0) ? SLOT(interpvplabel) : obj;

 return ((robj->ml_flags & MAC_LOMAC_FLAG_AUX &&
     !lomac_dominate_element(&robj->ml_auxsingle, &subj->ml_single)
     && lomac_auxsingle_in_range(robj, subj)) ||
     !lomac_dominate_single(obj, subj));
}
