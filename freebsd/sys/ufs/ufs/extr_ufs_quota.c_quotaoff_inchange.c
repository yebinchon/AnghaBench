
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufsmount {scalar_t__* um_quotas; int * um_qflags; } ;
struct thread {int dummy; } ;
struct mount {int mnt_flag; } ;


 int MAXQUOTAS ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_QUOTA ;
 scalar_t__ NULLVP ;
 int QTF_CLOSING ;
 int UFS_LOCK (struct ufsmount*) ;
 int UFS_UNLOCK (struct ufsmount*) ;
 struct ufsmount* VFSTOUFS (struct mount*) ;
 int quotaoff_inchange1 (struct thread*,struct mount*,int) ;

int
quotaoff_inchange(struct thread *td, struct mount *mp, int type)
{
 struct ufsmount *ump;
 int error, i;

 error = quotaoff_inchange1(td, mp, type);

 ump = VFSTOUFS(mp);
 UFS_LOCK(ump);
 ump->um_qflags[type] &= ~QTF_CLOSING;
 for (i = 0; i < MAXQUOTAS; i++)
  if (ump->um_quotas[i] != NULLVP)
   break;
 if (i == MAXQUOTAS) {
  MNT_ILOCK(mp);
  mp->mnt_flag &= ~MNT_QUOTA;
  MNT_IUNLOCK(mp);
 }
 UFS_UNLOCK(ump);
 return (error);
}
