
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct ucred {struct label* cr_label; } ;
struct TYPE_2__ {int mle_grade; int mle_type; } ;
struct mac_lomac {int ml_flags; TYPE_1__ ml_auxsingle; int ml_single; } ;
struct label {int dummy; } ;
struct image_params {int dummy; } ;


 int MAC_LOMAC_FLAG_AUX ;
 struct mac_lomac* SLOT (struct label*) ;
 scalar_t__ lomac_auxsingle_in_range (struct mac_lomac*,struct mac_lomac*) ;
 int lomac_copy (struct mac_lomac*,struct mac_lomac*) ;
 int lomac_dominate_element (TYPE_1__*,int *) ;
 int lomac_dominate_single (struct mac_lomac*,struct mac_lomac*) ;
 scalar_t__ lomac_enabled ;
 int lomac_set_single (struct mac_lomac*,int ,int ) ;
 int maybe_demote (struct mac_lomac*,struct mac_lomac*,char*,char*,struct vnode*) ;
 scalar_t__ revocation_enabled ;

__attribute__((used)) static void
lomac_vnode_execve_transition(struct ucred *old, struct ucred *new,
    struct vnode *vp, struct label *vplabel, struct label *interpvplabel,
    struct image_params *imgp, struct label *execlabel)
{
 struct mac_lomac *source, *dest, *obj, *robj;

 source = SLOT(old->cr_label);
 dest = SLOT(new->cr_label);
 obj = SLOT(vplabel);
 robj = interpvplabel != ((void*)0) ? SLOT(interpvplabel) : obj;

 lomac_copy(source, dest);





 if (robj->ml_flags & MAC_LOMAC_FLAG_AUX &&
     !lomac_dominate_element(&robj->ml_auxsingle, &dest->ml_single)
     && lomac_auxsingle_in_range(robj, dest))
  lomac_set_single(dest, robj->ml_auxsingle.mle_type,
      robj->ml_auxsingle.mle_grade);







 if (lomac_enabled && revocation_enabled &&
     !lomac_dominate_single(obj, source))
  (void)maybe_demote(source, obj, "executing", "file", vp);
}
