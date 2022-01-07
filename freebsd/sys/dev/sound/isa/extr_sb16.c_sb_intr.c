
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fmt; int dch; int channel; scalar_t__ run; } ;
struct TYPE_3__ {int fmt; int dch; int channel; scalar_t__ run; } ;
struct sb_info {int bd_flags; TYPE_2__ rch; TYPE_1__ pch; } ;


 int AFMT_16BIT ;
 int AFMT_8BIT ;
 int BD_F_SB16X ;
 int DSP_DATA_AVAIL ;
 int DSP_DATA_AVL16 ;
 int IRQ_STAT ;
 int chn_intr (int ) ;
 int printf (char*,int,int) ;
 int sb_getmixer (struct sb_info*,int ) ;
 int sb_lock (struct sb_info*) ;
 int sb_rd (struct sb_info*,int ) ;
 int sb_unlock (struct sb_info*) ;

__attribute__((used)) static void
sb_intr(void *arg)
{
     struct sb_info *sb = (struct sb_info *)arg;
     int reason, c;






 reason = 0;
 sb_lock(sb);
     c = sb_getmixer(sb, IRQ_STAT);
     if (c & 1)
  sb_rd(sb, DSP_DATA_AVAIL);

     if (c & 2)
  sb_rd(sb, DSP_DATA_AVL16);
 sb_unlock(sb);






 if (sb->bd_flags & BD_F_SB16X) {
      if (c & 1) {
   if (sb->pch.fmt & AFMT_8BIT)
    reason |= 1;
   if (sb->rch.fmt & AFMT_8BIT)
    reason |= 2;
      }
      if (c & 2) {
   if (sb->pch.fmt & AFMT_16BIT)
    reason |= 1;
   if (sb->rch.fmt & AFMT_16BIT)
    reason |= 2;
      }
 } else {
      if (c & 1) {
   if (sb->pch.dch == 1)
    reason |= 1;
   if (sb->rch.dch == 1)
    reason |= 2;
      }
      if (c & 2) {
   if (sb->pch.dch == 2)
    reason |= 1;
   if (sb->rch.dch == 2)
    reason |= 2;
      }
 }



     if ((reason & 1) && (sb->pch.run))
  chn_intr(sb->pch.channel);

     if ((reason & 2) && (sb->rch.run))
  chn_intr(sb->rch.channel);
}
