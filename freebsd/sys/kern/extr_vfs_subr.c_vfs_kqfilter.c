
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vop_kqfilter_args {struct knote* a_kn; struct vnode* a_vp; } ;
struct vnode {TYPE_2__* v_pollinfo; } ;
struct knote {int kn_filter; scalar_t__ kn_hook; int * kn_fop; } ;
struct knlist {int dummy; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_3__ {struct knlist si_note; } ;
struct TYPE_4__ {TYPE_1__ vpi_selinfo; } ;


 int EINVAL ;
 int ENOMEM ;



 int knlist_add (struct knlist*,struct knote*,int ) ;
 int v_addpollinfo (struct vnode*) ;
 int vfsread_filtops ;
 int vfsvnode_filtops ;
 int vfswrite_filtops ;
 int vhold (struct vnode*) ;

int
vfs_kqfilter(struct vop_kqfilter_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct knote *kn = ap->a_kn;
 struct knlist *knl;

 switch (kn->kn_filter) {
 case 130:
  kn->kn_fop = &vfsread_filtops;
  break;
 case 128:
  kn->kn_fop = &vfswrite_filtops;
  break;
 case 129:
  kn->kn_fop = &vfsvnode_filtops;
  break;
 default:
  return (EINVAL);
 }

 kn->kn_hook = (caddr_t)vp;

 v_addpollinfo(vp);
 if (vp->v_pollinfo == ((void*)0))
  return (ENOMEM);
 knl = &vp->v_pollinfo->vpi_selinfo.si_note;
 vhold(vp);
 knlist_add(knl, kn, 0);

 return (0);
}
