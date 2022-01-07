
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channel; } ;
struct TYPE_4__ {int channel; } ;
struct via_info {int lock; TYPE_1__ rch; TYPE_2__ pch; } ;


 int VIA_PLAY_STAT ;
 int VIA_RECORD_STAT ;
 int VIA_RPSTAT_INTR ;
 int chn_intr (int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int via_rd (struct via_info*,int ,int) ;
 int via_wr (struct via_info*,int ,int,int) ;

__attribute__((used)) static void
via_intr(void *p)
{
 struct via_info *via = p;



 snd_mtxlock(via->lock);
 if (via_rd(via, VIA_PLAY_STAT, 1) & VIA_RPSTAT_INTR) {
  via_wr(via, VIA_PLAY_STAT, VIA_RPSTAT_INTR, 1);
  snd_mtxunlock(via->lock);
  chn_intr(via->pch.channel);
  snd_mtxlock(via->lock);
 }


 if (via_rd(via, VIA_RECORD_STAT, 1) & VIA_RPSTAT_INTR) {
  via_wr(via, VIA_RECORD_STAT, VIA_RPSTAT_INTR, 1);
  snd_mtxunlock(via->lock);
  chn_intr(via->rch.channel);
  return;
 }
 snd_mtxunlock(via->lock);
}
