
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_deleteextattr_args {int a_vp; } ;


 int NOTE_ATTRIB ;
 int VFS_KNOTE_LOCKED (int ,int ) ;

void
vop_deleteextattr_post(void *ap, int rc)
{
 struct vop_deleteextattr_args *a = ap;

 if (!rc)
  VFS_KNOTE_LOCKED(a->a_vp, NOTE_ATTRIB);
}
