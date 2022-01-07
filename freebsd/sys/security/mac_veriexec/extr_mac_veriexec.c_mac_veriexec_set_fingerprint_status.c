
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; int v_tag; } ;
typedef int fingerprint_status_t ;


 struct vnode* NULLVPTOLOWERVP (struct vnode*) ;
 int SLOT_SET (int ,int ) ;
 scalar_t__ strcmp (int ,char*) ;

void
mac_veriexec_set_fingerprint_status(struct vnode *vp,
    fingerprint_status_t fp_status)
{


 if (strcmp(vp->v_tag, "null") == 0) {
  struct vnode *ldvp;

  ldvp = NULLVPTOLOWERVP(vp);
  mac_veriexec_set_fingerprint_status(ldvp, fp_status);
  return;
 }
 SLOT_SET(vp->v_label, fp_status);
}
