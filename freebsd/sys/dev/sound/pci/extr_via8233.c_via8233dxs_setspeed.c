
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct via_info {int lock; } ;
struct via_chinfo {int rbase; struct via_info* parent; } ;
typedef int kobj_t ;


 int VIA8233_DXS_RATEFMT_48K ;
 int VIA8233_RP_DXS_RATEFMT ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int via_rd (struct via_info*,int,int) ;
 int via_wr (struct via_info*,int,int,int) ;

__attribute__((used)) static uint32_t
via8233dxs_setspeed(kobj_t obj, void *data, uint32_t speed)
{
 struct via_chinfo *ch = data;
 struct via_info *via = ch->parent;
 uint32_t r, v;

 r = ch->rbase + VIA8233_RP_DXS_RATEFMT;
 snd_mtxlock(via->lock);
 v = via_rd(via, r, 4) & ~VIA8233_DXS_RATEFMT_48K;



 v |= VIA8233_DXS_RATEFMT_48K * (speed / 48) / (48000 / 48);
 via_wr(via, r, v, 4);
 snd_mtxunlock(via->lock);

 return (speed);
}
