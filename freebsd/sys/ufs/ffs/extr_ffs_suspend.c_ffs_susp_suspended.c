
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufsmount {int um_flags; } ;
struct mount {int dummy; } ;


 int SA_LOCKED ;
 int UM_WRITESUSPENDED ;
 struct ufsmount* VFSTOUFS (struct mount*) ;
 int ffs_susp_lock ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
ffs_susp_suspended(struct mount *mp)
{
 struct ufsmount *ump;

 sx_assert(&ffs_susp_lock, SA_LOCKED);

 ump = VFSTOUFS(mp);
 if ((ump->um_flags & UM_WRITESUSPENDED) != 0)
  return (1);
 return (0);
}
