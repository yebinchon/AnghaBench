
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; } ;
struct knote {int kn_flags; scalar_t__ kn_data; scalar_t__ kn_hook; } ;


 int EV_EOF ;
 int EV_ONESHOT ;
 long NOTE_REVOKE ;
 scalar_t__ VBAD ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;

__attribute__((used)) static int
filt_vfswrite(struct knote *kn, long hint)
{
 struct vnode *vp = (struct vnode *)kn->kn_hook;

 VI_LOCK(vp);





 if (hint == NOTE_REVOKE || (hint == 0 && vp->v_type == VBAD))
  kn->kn_flags |= (EV_EOF | EV_ONESHOT);

 kn->kn_data = 0;
 VI_UNLOCK(vp);
 return (1);
}
