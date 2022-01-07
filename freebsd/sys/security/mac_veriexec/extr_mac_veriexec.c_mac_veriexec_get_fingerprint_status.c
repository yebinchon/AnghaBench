
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_tag; int v_label; } ;
typedef int fingerprint_status_t ;





 struct vnode* NULLVPTOLOWERVP (struct vnode*) ;
 int SLOT (int ) ;
 int strcmp (int ,char*) ;

fingerprint_status_t
mac_veriexec_get_fingerprint_status(struct vnode *vp)
{
 fingerprint_status_t fps;

 fps = SLOT(vp->v_label);
 switch (fps) {
 case 128:
 case 129:
 case 130:
  break;
 default:

  if (strcmp(vp->v_tag, "null") == 0) {
   struct vnode *ldvp;

   ldvp = NULLVPTOLOWERVP(vp);
   return mac_veriexec_get_fingerprint_status(ldvp);
  }
  break;
 }
 return fps;
}
