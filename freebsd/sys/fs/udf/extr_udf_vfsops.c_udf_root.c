
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct udf_mnt {int root_icb; } ;
struct mount {int dummy; } ;
typedef int ino_t ;


 struct udf_mnt* VFSTOUDFFS (struct mount*) ;
 int udf_getid (int *) ;
 int udf_vget (struct mount*,int ,int,struct vnode**) ;

__attribute__((used)) static int
udf_root(struct mount *mp, int flags, struct vnode **vpp)
{
 struct udf_mnt *udfmp;
 ino_t id;

 udfmp = VFSTOUDFFS(mp);

 id = udf_getid(&udfmp->root_icb);

 return (udf_vget(mp, id, flags, vpp));
}
