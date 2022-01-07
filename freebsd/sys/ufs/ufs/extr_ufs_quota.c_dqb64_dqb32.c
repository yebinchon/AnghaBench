
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dqblk64 {int dqb_itime; int dqb_btime; int dqb_curinodes; int dqb_isoftlimit; int dqb_ihardlimit; int dqb_curblocks; int dqb_bsoftlimit; int dqb_bhardlimit; } ;
struct dqblk32 {void* dqb_itime; void* dqb_btime; void* dqb_curinodes; void* dqb_isoftlimit; void* dqb_ihardlimit; void* dqb_curblocks; void* dqb_bsoftlimit; void* dqb_bhardlimit; } ;


 void* CLIP32 (int ) ;

__attribute__((used)) static void
dqb64_dqb32(const struct dqblk64 *dqb64, struct dqblk32 *dqb32)
{

 dqb32->dqb_bhardlimit = CLIP32(dqb64->dqb_bhardlimit);
 dqb32->dqb_bsoftlimit = CLIP32(dqb64->dqb_bsoftlimit);
 dqb32->dqb_curblocks = CLIP32(dqb64->dqb_curblocks);
 dqb32->dqb_ihardlimit = CLIP32(dqb64->dqb_ihardlimit);
 dqb32->dqb_isoftlimit = CLIP32(dqb64->dqb_isoftlimit);
 dqb32->dqb_curinodes = CLIP32(dqb64->dqb_curinodes);
 dqb32->dqb_btime = CLIP32(dqb64->dqb_btime);
 dqb32->dqb_itime = CLIP32(dqb64->dqb_itime);
}
