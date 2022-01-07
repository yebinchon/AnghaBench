
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dq_itime; int dq_btime; int dq_curinodes; int dq_isoftlimit; int dq_ihardlimit; int dq_curblocks; int dq_bsoftlimit; int dq_bhardlimit; } ;
struct dqblk32 {void* dqb_itime; void* dqb_btime; void* dqb_curinodes; void* dqb_isoftlimit; void* dqb_ihardlimit; void* dqb_curblocks; void* dqb_bsoftlimit; void* dqb_bhardlimit; } ;


 void* CLIP32 (int ) ;

__attribute__((used)) static void
dq_dqb32(const struct dquot *dq, struct dqblk32 *dqb32)
{

 dqb32->dqb_bhardlimit = CLIP32(dq->dq_bhardlimit);
 dqb32->dqb_bsoftlimit = CLIP32(dq->dq_bsoftlimit);
 dqb32->dqb_curblocks = CLIP32(dq->dq_curblocks);
 dqb32->dqb_ihardlimit = CLIP32(dq->dq_ihardlimit);
 dqb32->dqb_isoftlimit = CLIP32(dq->dq_isoftlimit);
 dqb32->dqb_curinodes = CLIP32(dq->dq_curinodes);
 dqb32->dqb_btime = CLIP32(dq->dq_btime);
 dqb32->dqb_itime = CLIP32(dq->dq_itime);
}
