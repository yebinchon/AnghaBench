
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_symlink_args {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int
msdosfs_symlink(struct vop_symlink_args *ap)
{
 return (EOPNOTSUPP);
}
