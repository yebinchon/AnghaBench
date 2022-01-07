
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ufs2_daddr_t ;
struct vnode {int v_vflag; } ;
struct ucred {int dummy; } ;
struct inode {struct dquot** i_dquot; scalar_t__ i_gid; scalar_t__ i_uid; } ;
struct dquot {scalar_t__ dq_curblocks; scalar_t__ dq_bsoftlimit; int dq_flags; scalar_t__ dq_btime; } ;
struct TYPE_6__ {scalar_t__* um_btime; } ;
struct TYPE_4__ {int f_mntonname; } ;
struct TYPE_5__ {TYPE_1__ mnt_stat; } ;


 int CHOWN ;
 int DQI_LOCK (struct dquot*) ;
 int DQI_UNLOCK (struct dquot*) ;
 int DQI_WAIT (struct dquot*,scalar_t__,char*) ;
 int DQ_BLKS ;
 int DQ_MOD ;
 int FORCE ;
 TYPE_3__* ITOUMP (struct inode*) ;
 struct vnode* ITOV (struct inode*) ;
 TYPE_2__* ITOVFS (struct inode*) ;
 int MAXQUOTAS ;
 int MPASS (int) ;
 struct ucred* NOCRED ;
 struct dquot* NODQUOT ;
 scalar_t__ PINOD ;
 int PRIV_VFS_EXCEEDQUOTA ;
 int VV_SYSTEM ;
 int chkdqchg (struct inode*,scalar_t__,struct ucred*,int,int*) ;
 int chkdquot (struct inode*) ;
 scalar_t__ priv_check_cred (struct ucred*,int ) ;
 int * quotatypes ;
 scalar_t__ time_second ;
 int uprintf (char*,int ,int ) ;

int
chkdq(struct inode *ip, ufs2_daddr_t change, struct ucred *cred, int flags)
{
 struct dquot *dq;
 ufs2_daddr_t ncurblocks;
 struct vnode *vp = ITOV(ip);
 int i, error, warn, do_check;

 MPASS(cred != NOCRED || (flags & FORCE) != 0);




 if ((vp->v_vflag & VV_SYSTEM) != 0)
  return (0);




 if ((int)ip->i_uid < 0 || (int)ip->i_gid < 0)
  return (0);




 if (change == 0)
  return (0);
 if (change < 0) {
  for (i = 0; i < MAXQUOTAS; i++) {
   if ((dq = ip->i_dquot[i]) == NODQUOT)
    continue;
   DQI_LOCK(dq);
   DQI_WAIT(dq, PINOD+1, "chkdq1");
   ncurblocks = dq->dq_curblocks + change;
   if (ncurblocks >= 0)
    dq->dq_curblocks = ncurblocks;
   else
    dq->dq_curblocks = 0;
   dq->dq_flags &= ~DQ_BLKS;
   dq->dq_flags |= DQ_MOD;
   DQI_UNLOCK(dq);
  }
  return (0);
 }
 if ((flags & FORCE) == 0 &&
     priv_check_cred(cred, PRIV_VFS_EXCEEDQUOTA))
  do_check = 1;
 else
  do_check = 0;
 for (i = 0; i < MAXQUOTAS; i++) {
  if ((dq = ip->i_dquot[i]) == NODQUOT)
   continue;
  warn = 0;
  DQI_LOCK(dq);
  DQI_WAIT(dq, PINOD+1, "chkdq2");
  if (do_check) {
   error = chkdqchg(ip, change, cred, i, &warn);
   if (error) {




    while (i > 0) {
     --i;
     dq = ip->i_dquot[i];
     if (dq == NODQUOT)
      continue;
     DQI_LOCK(dq);
     DQI_WAIT(dq, PINOD+1, "chkdq3");
     ncurblocks = dq->dq_curblocks - change;
     if (ncurblocks >= 0)
      dq->dq_curblocks = ncurblocks;
     else
      dq->dq_curblocks = 0;
     dq->dq_flags &= ~DQ_BLKS;
     dq->dq_flags |= DQ_MOD;
     DQI_UNLOCK(dq);
    }
    return (error);
   }
  }

  if (dq->dq_curblocks + change >= dq->dq_bsoftlimit &&
      dq->dq_curblocks < dq->dq_bsoftlimit)
   dq->dq_btime = time_second + ITOUMP(ip)->um_btime[i];
  dq->dq_curblocks += change;
  dq->dq_flags |= DQ_MOD;
  DQI_UNLOCK(dq);
  if (warn)
   uprintf("\n%s: warning, %s disk quota exceeded\n",
       ITOVFS(ip)->mnt_stat.f_mntonname,
       quotatypes[i]);
 }
 return (0);
}
