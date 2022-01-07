
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ufs2_daddr_t ;
struct ucred {scalar_t__ cr_uid; } ;
struct inode {scalar_t__ i_uid; struct dquot** i_dquot; } ;
struct dquot {scalar_t__ dq_curblocks; scalar_t__ dq_bhardlimit; int dq_flags; scalar_t__ dq_bsoftlimit; scalar_t__ dq_btime; } ;
struct TYPE_6__ {scalar_t__* um_btime; } ;
struct TYPE_4__ {int f_mntonname; } ;
struct TYPE_5__ {TYPE_1__ mnt_stat; } ;


 int DQI_UNLOCK (struct dquot*) ;
 int DQ_BLKS ;
 int EDQUOT ;
 TYPE_3__* ITOUMP (struct inode*) ;
 TYPE_2__* ITOVFS (struct inode*) ;
 int * quotatypes ;
 scalar_t__ time_second ;
 int uprintf (char*,int ,int ) ;

__attribute__((used)) static int
chkdqchg(struct inode *ip, ufs2_daddr_t change, struct ucred *cred,
    int type, int *warn)
{
 struct dquot *dq = ip->i_dquot[type];
 ufs2_daddr_t ncurblocks = dq->dq_curblocks + change;




 if (ncurblocks >= dq->dq_bhardlimit && dq->dq_bhardlimit) {
  if ((dq->dq_flags & DQ_BLKS) == 0 &&
      ip->i_uid == cred->cr_uid) {
   dq->dq_flags |= DQ_BLKS;
   DQI_UNLOCK(dq);
   uprintf("\n%s: write failed, %s disk limit reached\n",
       ITOVFS(ip)->mnt_stat.f_mntonname,
       quotatypes[type]);
   return (EDQUOT);
  }
  DQI_UNLOCK(dq);
  return (EDQUOT);
 }




 if (ncurblocks >= dq->dq_bsoftlimit && dq->dq_bsoftlimit) {
  if (dq->dq_curblocks < dq->dq_bsoftlimit) {
   dq->dq_btime = time_second + ITOUMP(ip)->um_btime[type];
   if (ip->i_uid == cred->cr_uid)
    *warn = 1;
   return (0);
  }
  if (time_second > dq->dq_btime) {
   if ((dq->dq_flags & DQ_BLKS) == 0 &&
       ip->i_uid == cred->cr_uid) {
    dq->dq_flags |= DQ_BLKS;
    DQI_UNLOCK(dq);
    uprintf("\n%s: write failed, %s "
        "disk quota exceeded for too long\n",
        ITOVFS(ip)->mnt_stat.f_mntonname,
        quotatypes[type]);
    return (EDQUOT);
   }
   DQI_UNLOCK(dq);
   return (EDQUOT);
  }
 }
 return (0);
}
