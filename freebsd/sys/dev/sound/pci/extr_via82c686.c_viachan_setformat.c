
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct via_info {int lock; } ;
struct via_chinfo {int dir; int mode; struct via_info* parent; } ;
typedef int kobj_t ;


 int AFMT_CHANNEL (int) ;
 int AFMT_S16_LE ;
 int DEB (int ) ;
 int VIA_RPMODE_16BIT ;
 int VIA_RPMODE_STEREO ;
 int printf (char*,int,int) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int via_rd (struct via_info*,int ,int) ;
 int via_wr (struct via_info*,int ,int,int) ;

__attribute__((used)) static int
viachan_setformat(kobj_t obj, void *data, u_int32_t format)
{
 struct via_chinfo *ch = data;
 struct via_info *via = ch->parent;
 int mode, mode_set;

 mode_set = 0;
 if (AFMT_CHANNEL(format) > 1)
  mode_set |= VIA_RPMODE_STEREO;
 if (format & AFMT_S16_LE)
  mode_set |= VIA_RPMODE_16BIT;

 DEB(printf("set format: dir = %d, format=%x\n", ch->dir, format));
 snd_mtxlock(via->lock);
 mode = via_rd(via, ch->mode, 1);
 mode &= ~(VIA_RPMODE_16BIT | VIA_RPMODE_STEREO);
 mode |= mode_set;
 via_wr(via, ch->mode, mode, 1);
 snd_mtxunlock(via->lock);

 return 0;
}
