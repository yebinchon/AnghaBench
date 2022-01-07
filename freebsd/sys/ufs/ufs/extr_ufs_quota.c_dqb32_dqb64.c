
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dqblk64 {int dqb_itime; int dqb_btime; int dqb_curinodes; int dqb_isoftlimit; int dqb_ihardlimit; int dqb_curblocks; int dqb_bsoftlimit; int dqb_bhardlimit; } ;
struct dqblk32 {int dqb_itime; int dqb_btime; int dqb_curinodes; int dqb_isoftlimit; int dqb_ihardlimit; int dqb_curblocks; int dqb_bsoftlimit; int dqb_bhardlimit; } ;



__attribute__((used)) static void
dqb32_dqb64(const struct dqblk32 *dqb32, struct dqblk64 *dqb64)
{

 dqb64->dqb_bhardlimit = dqb32->dqb_bhardlimit;
 dqb64->dqb_bsoftlimit = dqb32->dqb_bsoftlimit;
 dqb64->dqb_curblocks = dqb32->dqb_curblocks;
 dqb64->dqb_ihardlimit = dqb32->dqb_ihardlimit;
 dqb64->dqb_isoftlimit = dqb32->dqb_isoftlimit;
 dqb64->dqb_curinodes = dqb32->dqb_curinodes;
 dqb64->dqb_btime = dqb32->dqb_btime;
 dqb64->dqb_itime = dqb32->dqb_itime;
}
