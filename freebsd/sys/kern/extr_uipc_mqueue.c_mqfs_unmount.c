
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;


 int FORCECLOSE ;
 int MNT_FORCE ;
 int curthread ;
 int vflush (struct mount*,int ,int ,int ) ;

__attribute__((used)) static int
mqfs_unmount(struct mount *mp, int mntflags)
{
 int error;

 error = vflush(mp, 0, (mntflags & MNT_FORCE) ? FORCECLOSE : 0,
     curthread);
 return (error);
}
