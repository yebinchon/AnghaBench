
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_close_args {scalar_t__ a_cred; int a_fflag; TYPE_1__* a_vp; } ;
struct TYPE_2__ {int v_iflag; } ;


 int FWRITE ;
 scalar_t__ NOCRED ;
 int NOTE_CLOSE ;
 int NOTE_CLOSE_WRITE ;
 int VFS_KNOTE_LOCKED (TYPE_1__*,int ) ;
 int VI_DOOMED ;

void
vop_close_post(void *ap, int rc)
{
 struct vop_close_args *a = ap;

 if (!rc && (a->a_cred != NOCRED ||
     (a->a_vp->v_iflag & VI_DOOMED) == 0)) {
  VFS_KNOTE_LOCKED(a->a_vp, (a->a_fflag & FWRITE) != 0 ?
      NOTE_CLOSE_WRITE : NOTE_CLOSE);
 }
}
