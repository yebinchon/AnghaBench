
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
 int MAGIC_MOUNT ;
 int MAGIC_VNODE ;
 int devfs_vnode_associate ;

__attribute__((used)) static void
test_devfs_vnode_associate(struct mount *mp, struct label *mplabel,
    struct devfs_dirent *de, struct label *delabel, struct vnode *vp,
    struct label *vplabel)
{

 LABEL_CHECK(mplabel, MAGIC_MOUNT);
 LABEL_CHECK(delabel, MAGIC_DEVFS);
 LABEL_CHECK(vplabel, MAGIC_VNODE);
 COUNTER_INC(devfs_vnode_associate);
}
