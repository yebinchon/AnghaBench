
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int dummy; } ;


 int ufs_extattrctl (struct mount*,int,struct vnode*,int,char const*) ;
 int vfs_stdextattrctl (struct mount*,int,struct vnode*,int,char const*) ;

__attribute__((used)) static int
ffs_extattrctl(struct mount *mp, int cmd, struct vnode *filename_vp,
 int attrnamespace, const char *attrname)
{





 return (vfs_stdextattrctl(mp, cmd, filename_vp, attrnamespace,
     attrname));

}
