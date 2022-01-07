
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ufsmount {scalar_t__* um_quotas; int* um_qflags; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;


 int EINVAL ;
 scalar_t__ NULLVP ;
 int QTF_64BIT ;
 int QTF_CLOSING ;
 int UFS_LOCK (struct ufsmount*) ;
 int UFS_UNLOCK (struct ufsmount*) ;
 struct ufsmount* VFSTOUFS (struct mount*) ;
 int copyout (int*,void*,int) ;

int
getquotasize(struct thread *td, struct mount *mp, u_long id, int type,
    void *sizep)
{
 struct ufsmount *ump = VFSTOUFS(mp);
 int bitsize;

 UFS_LOCK(ump);
 if (ump->um_quotas[type] == NULLVP ||
     (ump->um_qflags[type] & QTF_CLOSING)) {
  UFS_UNLOCK(ump);
  return (EINVAL);
 }
 if ((ump->um_qflags[type] & QTF_64BIT) != 0)
  bitsize = 64;
 else
  bitsize = 32;
 UFS_UNLOCK(ump);
 return (copyout(&bitsize, sizep, sizeof(int)));
}
