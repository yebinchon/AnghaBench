
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {void* dq_itime; void* dq_btime; void* dq_curinodes; void* dq_isoftlimit; void* dq_ihardlimit; void* dq_curblocks; void* dq_bsoftlimit; void* dq_bhardlimit; } ;
struct dqblk64 {int dqb_itime; int dqb_btime; int dqb_curinodes; int dqb_isoftlimit; int dqb_ihardlimit; int dqb_curblocks; int dqb_bsoftlimit; int dqb_bhardlimit; } ;


 void* be64toh (int ) ;

__attribute__((used)) static void
dqb64_dq(const struct dqblk64 *dqb64, struct dquot *dq)
{

 dq->dq_bhardlimit = be64toh(dqb64->dqb_bhardlimit);
 dq->dq_bsoftlimit = be64toh(dqb64->dqb_bsoftlimit);
 dq->dq_curblocks = be64toh(dqb64->dqb_curblocks);
 dq->dq_ihardlimit = be64toh(dqb64->dqb_ihardlimit);
 dq->dq_isoftlimit = be64toh(dqb64->dqb_isoftlimit);
 dq->dq_curinodes = be64toh(dqb64->dqb_curinodes);
 dq->dq_btime = be64toh(dqb64->dqb_btime);
 dq->dq_itime = be64toh(dqb64->dqb_itime);
}
