
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {scalar_t__ mnt_secondary_writes; int mnt_kern_flag; } ;


 int MNTK_SUSPEND ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_REL (struct mount*) ;
 int panic (char*) ;
 int vn_suspendable (struct mount*) ;
 int wakeup (scalar_t__*) ;

void
vn_finished_secondary_write(struct mount *mp)
{
 if (mp == ((void*)0) || !vn_suspendable(mp))
  return;
 MNT_ILOCK(mp);
 MNT_REL(mp);
 mp->mnt_secondary_writes--;
 if (mp->mnt_secondary_writes < 0)
  panic("vn_finished_secondary_write: neg cnt");
 if ((mp->mnt_kern_flag & MNTK_SUSPEND) != 0 &&
     mp->mnt_secondary_writes <= 0)
  wakeup(&mp->mnt_secondary_writes);
 MNT_IUNLOCK(mp);
}
