
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dq_itime; int dq_btime; int dq_curinodes; int dq_isoftlimit; int dq_ihardlimit; int dq_curblocks; int dq_bsoftlimit; int dq_bhardlimit; } ;
struct dqblk64 {void* dqb_itime; void* dqb_btime; void* dqb_curinodes; void* dqb_isoftlimit; void* dqb_ihardlimit; void* dqb_curblocks; void* dqb_bsoftlimit; void* dqb_bhardlimit; } ;


 void* htobe64 (int ) ;

__attribute__((used)) static void
dq_dqb64(const struct dquot *dq, struct dqblk64 *dqb64)
{

 dqb64->dqb_bhardlimit = htobe64(dq->dq_bhardlimit);
 dqb64->dqb_bsoftlimit = htobe64(dq->dq_bsoftlimit);
 dqb64->dqb_curblocks = htobe64(dq->dq_curblocks);
 dqb64->dqb_ihardlimit = htobe64(dq->dq_ihardlimit);
 dqb64->dqb_isoftlimit = htobe64(dq->dq_isoftlimit);
 dqb64->dqb_curinodes = htobe64(dq->dq_curinodes);
 dqb64->dqb_btime = htobe64(dq->dq_btime);
 dqb64->dqb_itime = htobe64(dq->dq_itime);
}
