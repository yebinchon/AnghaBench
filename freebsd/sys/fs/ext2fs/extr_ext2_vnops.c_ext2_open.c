
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vop_open_args {int a_mode; int a_td; TYPE_1__* a_vp; } ;
struct TYPE_5__ {int i_flags; int i_size; } ;
struct TYPE_4__ {scalar_t__ v_type; } ;


 int APPEND ;
 int EOPNOTSUPP ;
 int EPERM ;
 int FWRITE ;
 int O_APPEND ;
 scalar_t__ VBLK ;
 scalar_t__ VCHR ;
 TYPE_2__* VTOI (TYPE_1__*) ;
 int vnode_create_vobject (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int
ext2_open(struct vop_open_args *ap)
{

 if (ap->a_vp->v_type == VBLK || ap->a_vp->v_type == VCHR)
  return (EOPNOTSUPP);




 if ((VTOI(ap->a_vp)->i_flags & APPEND) &&
     (ap->a_mode & (FWRITE | O_APPEND)) == FWRITE)
  return (EPERM);

 vnode_create_vobject(ap->a_vp, VTOI(ap->a_vp)->i_size, ap->a_td);

 return (0);
}
