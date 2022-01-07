
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct label {int dummy; } ;
struct devfs_dirent {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_DEVFS ;
 int MAGIC_VNODE ;
 int devfs_update ;

__attribute__((used)) static void
test_devfs_update(struct mount *mp, struct devfs_dirent *devfs_dirent,
    struct label *direntlabel, struct vnode *vp, struct label *vplabel)
{

 LABEL_CHECK(direntlabel, MAGIC_DEVFS);
 LABEL_CHECK(vplabel, MAGIC_VNODE);
 COUNTER_INC(devfs_update);
}
