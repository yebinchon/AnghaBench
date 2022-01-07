
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {TYPE_1__* v_pollinfo; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {int vpi_revents; int vpi_events; int vpi_lock; int vpi_selinfo; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int selrecord (struct thread*,int *) ;
 int v_addpollinfo (struct vnode*) ;

int
vn_pollrecord(struct vnode *vp, struct thread *td, int events)
{

 v_addpollinfo(vp);
 mtx_lock(&vp->v_pollinfo->vpi_lock);
 if (vp->v_pollinfo->vpi_revents & events) {







  events &= vp->v_pollinfo->vpi_revents;
  vp->v_pollinfo->vpi_revents &= ~events;

  mtx_unlock(&vp->v_pollinfo->vpi_lock);
  return (events);
 }
 vp->v_pollinfo->vpi_events |= events;
 selrecord(td, &vp->v_pollinfo->vpi_selinfo);
 mtx_unlock(&vp->v_pollinfo->vpi_lock);
 return (0);
}
