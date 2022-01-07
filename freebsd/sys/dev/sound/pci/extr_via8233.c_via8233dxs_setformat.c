
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct via_info {int lock; } ;
struct via_chinfo {int rbase; struct via_info* parent; } ;
typedef int kobj_t ;


 int AFMT_16BIT ;
 int AFMT_CHANNEL (int) ;
 int VIA8233_DXS_RATEFMT_16BIT ;
 int VIA8233_DXS_RATEFMT_STEREO ;
 int VIA8233_RP_DXS_RATEFMT ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int via_rd (struct via_info*,int,int) ;
 int via_wr (struct via_info*,int,int,int) ;

__attribute__((used)) static int
via8233dxs_setformat(kobj_t obj, void *data, uint32_t format)
{
 struct via_chinfo *ch = data;
 struct via_info *via = ch->parent;
 uint32_t r, v;

 r = ch->rbase + VIA8233_RP_DXS_RATEFMT;
 snd_mtxlock(via->lock);
 v = via_rd(via, r, 4);

 v &= ~(VIA8233_DXS_RATEFMT_STEREO | VIA8233_DXS_RATEFMT_16BIT);
 if (AFMT_CHANNEL(format) > 1)
  v |= VIA8233_DXS_RATEFMT_STEREO;
 if (format & AFMT_16BIT)
  v |= VIA8233_DXS_RATEFMT_16BIT;
 via_wr(via, r, v, 4);
 snd_mtxunlock(via->lock);

 return (0);
}
