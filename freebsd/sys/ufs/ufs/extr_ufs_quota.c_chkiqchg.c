
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ucred {scalar_t__ cr_uid; } ;
struct inode {scalar_t__ i_uid; struct dquot** i_dquot; } ;
struct dquot {scalar_t__ dq_curinodes; scalar_t__ dq_ihardlimit; int dq_flags; scalar_t__ dq_isoftlimit; scalar_t__ dq_itime; } ;
typedef scalar_t__ ino_t ;
struct TYPE_6__ {scalar_t__* um_itime; } ;
struct TYPE_4__ {int f_mntonname; } ;
struct TYPE_5__ {TYPE_1__ mnt_stat; } ;


 int DQI_UNLOCK (struct dquot*) ;
 int DQ_INODS ;
 int EDQUOT ;
 TYPE_3__* ITOUMP (struct inode*) ;
 TYPE_2__* ITOVFS (struct inode*) ;
 int * quotatypes ;
 scalar_t__ time_second ;
 int uprintf (char*,int ,int ) ;

__attribute__((used)) static int
chkiqchg(struct inode *ip, int change, struct ucred *cred, int type, int *warn)
{
 struct dquot *dq = ip->i_dquot[type];
 ino_t ncurinodes = dq->dq_curinodes + change;




 if (ncurinodes >= dq->dq_ihardlimit && dq->dq_ihardlimit) {
  if ((dq->dq_flags & DQ_INODS) == 0 &&
      ip->i_uid == cred->cr_uid) {
   dq->dq_flags |= DQ_INODS;
   DQI_UNLOCK(dq);
   uprintf("\n%s: write failed, %s inode limit reached\n",
       ITOVFS(ip)->mnt_stat.f_mntonname,
       quotatypes[type]);
   return (EDQUOT);
  }
  DQI_UNLOCK(dq);
  return (EDQUOT);
 }




 if (ncurinodes >= dq->dq_isoftlimit && dq->dq_isoftlimit) {
  if (dq->dq_curinodes < dq->dq_isoftlimit) {
   dq->dq_itime = time_second + ITOUMP(ip)->um_itime[type];
   if (ip->i_uid == cred->cr_uid)
    *warn = 1;
   return (0);
  }
  if (time_second > dq->dq_itime) {
   if ((dq->dq_flags & DQ_INODS) == 0 &&
       ip->i_uid == cred->cr_uid) {
    dq->dq_flags |= DQ_INODS;
    DQI_UNLOCK(dq);
    uprintf("\n%s: write failed, %s "
        "inode quota exceeded for too long\n",
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
