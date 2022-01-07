
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct via_info {int lock; } ;
struct via_chinfo {struct via_info* parent; } ;
typedef int kobj_t ;


 int AFMT_CHANNEL (int) ;
 int AFMT_S16_LE ;
 int VIA_WR0_FORMAT ;
 int WR_FORMAT_16BIT ;
 int WR_FORMAT_STEREO ;
 int WR_FORMAT_STOP_INDEX ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int via_wr (struct via_info*,int ,int,int) ;

__attribute__((used)) static int
via8233wr_setformat(kobj_t obj, void *data, uint32_t format)
{
 struct via_chinfo *ch = data;
 struct via_info *via = ch->parent;

 uint32_t f = WR_FORMAT_STOP_INDEX;

 if (AFMT_CHANNEL(format) > 1)
  f |= WR_FORMAT_STEREO;
 if (format & AFMT_S16_LE)
  f |= WR_FORMAT_16BIT;
 snd_mtxlock(via->lock);
 via_wr(via, VIA_WR0_FORMAT, f, 4);
 snd_mtxunlock(via->lock);

 return (0);
}
