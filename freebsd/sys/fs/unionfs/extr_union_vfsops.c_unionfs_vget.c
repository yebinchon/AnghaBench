
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int dummy; } ;
typedef int ino_t ;


 int EOPNOTSUPP ;

__attribute__((used)) static int
unionfs_vget(struct mount *mp, ino_t ino, int flags, struct vnode **vpp)
{
 return (EOPNOTSUPP);
}
