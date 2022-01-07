
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct inode {struct dquot** i_dquot; } ;
struct dquot {int dq_curinodes; scalar_t__ dq_isoftlimit; int dq_flags; scalar_t__ dq_itime; } ;
struct TYPE_6__ {scalar_t__* um_itime; } ;
struct TYPE_4__ {int f_mntonname; } ;
struct TYPE_5__ {TYPE_1__ mnt_stat; } ;


 int CHOWN ;
 int DQI_LOCK (struct dquot*) ;
 int DQI_UNLOCK (struct dquot*) ;
 int DQI_WAIT (struct dquot*,scalar_t__,char*) ;
 int DQ_INODS ;
 int DQ_MOD ;
 int FORCE ;
 TYPE_3__* ITOUMP (struct inode*) ;
 TYPE_2__* ITOVFS (struct inode*) ;
 int MAXQUOTAS ;
 int MPASS (int) ;
 struct ucred* NOCRED ;
 struct dquot* NODQUOT ;
 scalar_t__ PINOD ;
 int PRIV_VFS_EXCEEDQUOTA ;
 int chkdquot (struct inode*) ;
 int chkiqchg (struct inode*,int,struct ucred*,int,int*) ;
 scalar_t__ priv_check_cred (struct ucred*,int ) ;
 int * quotatypes ;
 scalar_t__ time_second ;
 int uprintf (char*,int ,int ) ;

int
chkiq(struct inode *ip, int change, struct ucred *cred, int flags)
{
 struct dquot *dq;
 int i, error, warn, do_check;

 MPASS(cred != NOCRED || (flags & FORCE) != 0);




 if (change == 0)
  return (0);
 if (change < 0) {
  for (i = 0; i < MAXQUOTAS; i++) {
   if ((dq = ip->i_dquot[i]) == NODQUOT)
    continue;
   DQI_LOCK(dq);
   DQI_WAIT(dq, PINOD+1, "chkiq1");
   if (dq->dq_curinodes >= -change)
    dq->dq_curinodes += change;
   else
    dq->dq_curinodes = 0;
   dq->dq_flags &= ~DQ_INODS;
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
  DQI_WAIT(dq, PINOD+1, "chkiq2");
  if (do_check) {
   error = chkiqchg(ip, change, cred, i, &warn);
   if (error) {




    while (i > 0) {
     --i;
     dq = ip->i_dquot[i];
     if (dq == NODQUOT)
      continue;
     DQI_LOCK(dq);
     DQI_WAIT(dq, PINOD+1, "chkiq3");
     if (dq->dq_curinodes >= change)
      dq->dq_curinodes -= change;
     else
      dq->dq_curinodes = 0;
     dq->dq_flags &= ~DQ_INODS;
     dq->dq_flags |= DQ_MOD;
     DQI_UNLOCK(dq);
    }
    return (error);
   }
  }

  if (dq->dq_curinodes + change >= dq->dq_isoftlimit &&
      dq->dq_curinodes < dq->dq_isoftlimit)
   dq->dq_itime = time_second + ITOUMP(ip)->um_itime[i];
  dq->dq_curinodes += change;
  dq->dq_flags |= DQ_MOD;
  DQI_UNLOCK(dq);
  if (warn)
   uprintf("\n%s: warning, %s inode quota exceeded\n",
       ITOVFS(ip)->mnt_stat.f_mntonname,
       quotatypes[i]);
 }
 return (0);
}
