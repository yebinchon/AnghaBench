
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dq_itime; int dq_btime; int dq_curinodes; int dq_isoftlimit; int dq_ihardlimit; int dq_curblocks; int dq_bsoftlimit; int dq_bhardlimit; } ;
struct dqblk32 {int dqb_itime; int dqb_btime; int dqb_curinodes; int dqb_isoftlimit; int dqb_ihardlimit; int dqb_curblocks; int dqb_bsoftlimit; int dqb_bhardlimit; } ;



__attribute__((used)) static void
dqb32_dq(const struct dqblk32 *dqb32, struct dquot *dq)
{

 dq->dq_bhardlimit = dqb32->dqb_bhardlimit;
 dq->dq_bsoftlimit = dqb32->dqb_bsoftlimit;
 dq->dq_curblocks = dqb32->dqb_curblocks;
 dq->dq_ihardlimit = dqb32->dqb_ihardlimit;
 dq->dq_isoftlimit = dqb32->dqb_isoftlimit;
 dq->dq_curinodes = dqb32->dqb_curinodes;
 dq->dq_btime = dqb32->dqb_btime;
 dq->dq_itime = dqb32->dqb_itime;
}
