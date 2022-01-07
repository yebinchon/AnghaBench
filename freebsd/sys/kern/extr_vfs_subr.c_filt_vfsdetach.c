
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {TYPE_2__* v_pollinfo; } ;
struct knote {scalar_t__ kn_hook; } ;
struct TYPE_3__ {int si_note; } ;
struct TYPE_4__ {TYPE_1__ vpi_selinfo; } ;


 int KASSERT (int ,char*) ;
 int knlist_remove (int *,struct knote*,int ) ;
 int vdrop (struct vnode*) ;

__attribute__((used)) static void
filt_vfsdetach(struct knote *kn)
{
 struct vnode *vp = (struct vnode *)kn->kn_hook;

 KASSERT(vp->v_pollinfo != ((void*)0), ("Missing v_pollinfo"));
 knlist_remove(&vp->v_pollinfo->vpi_selinfo.si_note, kn, 0);
 vdrop(vp);
}
