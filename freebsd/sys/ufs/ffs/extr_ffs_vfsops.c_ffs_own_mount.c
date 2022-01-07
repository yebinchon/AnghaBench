
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int * mnt_op; } ;


 int ufs_vfsops ;

int
ffs_own_mount(const struct mount *mp)
{

 if (mp->mnt_op == &ufs_vfsops)
  return (1);
 return (0);
}
