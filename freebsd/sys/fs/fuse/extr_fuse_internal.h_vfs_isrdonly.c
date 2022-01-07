
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int mnt_flag; } ;


 int MNT_RDONLY ;

__attribute__((used)) static inline bool
vfs_isrdonly(struct mount *mp)
{
 return ((mp->mnt_flag & MNT_RDONLY) != 0);
}
