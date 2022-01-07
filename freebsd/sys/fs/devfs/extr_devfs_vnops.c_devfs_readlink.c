
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_readlink_args {int a_uio; TYPE_1__* a_vp; } ;
struct devfs_dirent {int de_symlink; } ;
struct TYPE_2__ {struct devfs_dirent* v_data; } ;


 int strlen (int ) ;
 int uiomove (int ,int ,int ) ;

__attribute__((used)) static int
devfs_readlink(struct vop_readlink_args *ap)
{
 struct devfs_dirent *de;

 de = ap->a_vp->v_data;
 return (uiomove(de->de_symlink, strlen(de->de_symlink), ap->a_uio));
}
