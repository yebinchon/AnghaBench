
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct fid {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int
unionfs_fhtovp(struct mount *mp, struct fid *fidp, int flags,
    struct vnode **vpp)
{
 return (EOPNOTSUPP);
}
