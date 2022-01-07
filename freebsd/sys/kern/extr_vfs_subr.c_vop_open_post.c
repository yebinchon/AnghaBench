
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_open_args {int a_vp; } ;


 int NOTE_OPEN ;
 int VFS_KNOTE_LOCKED (int ,int ) ;

void
vop_open_post(void *ap, int rc)
{
 struct vop_open_args *a = ap;

 if (!rc)
  VFS_KNOTE_LOCKED(a->a_vp, NOTE_OPEN);
}
