
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad1816_info {int dummy; } ;
struct ad1816_chinfo {scalar_t__ dir; int blksz; int buffer; struct ad1816_info* parent; } ;
typedef int kobj_t ;


 int AD1816_CAPT ;
 int AD1816_ENABLE ;
 int AD1816_PLAY ;
 scalar_t__ PCMDIR_PLAY ;

 int PCMTRIG_COMMON (int) ;


 int ad1816_lock (struct ad1816_info*) ;
 int ad1816_read (struct ad1816_info*,int) ;
 int ad1816_unlock (struct ad1816_info*) ;
 int ad1816_write (struct ad1816_info*,int,int) ;
 int io_rd (struct ad1816_info*,int) ;
 int io_wr (struct ad1816_info*,int,int) ;
 int printf (char*,char*) ;
 int sndbuf_dma (int ,int) ;

__attribute__((used)) static int
ad1816chan_trigger(kobj_t obj, void *data, int go)
{
 struct ad1816_chinfo *ch = data;
     struct ad1816_info *ad1816 = ch->parent;
     int wr, reg;

 if (!PCMTRIG_COMMON(go))
  return 0;

 sndbuf_dma(ch->buffer, go);
     wr = (ch->dir == PCMDIR_PLAY);
     reg = wr? AD1816_PLAY : AD1816_CAPT;
 ad1816_lock(ad1816);
     switch (go) {
     case 129:

  if (!(io_rd(ad1816, reg) & AD1816_ENABLE)) {
       int cnt = ((ch->blksz) >> 2) - 1;
       ad1816_write(ad1816, wr? 8 : 10, cnt);
       ad1816_write(ad1816, wr? 9 : 11, 0);
       ad1816_write(ad1816, 1, ad1816_read(ad1816, 1) |
         (wr? 0x8000 : 0x4000));

       io_wr(ad1816, reg, io_rd(ad1816, reg) | AD1816_ENABLE);
       if (!(io_rd(ad1816, reg) & AD1816_ENABLE))
    printf("ad1816: failed to start %s DMA!\n",
           wr? "play" : "rec");
  }
  break;

     case 128:
     case 130:

  if (wr) {
       ad1816_write(ad1816, 1, ad1816_read(ad1816, 1) &
         ~(wr? 0x8000 : 0x4000));

       io_wr(ad1816, reg, io_rd(ad1816, reg) & ~AD1816_ENABLE);

       if (io_rd(ad1816, reg) & AD1816_ENABLE)
    printf("ad1816: failed to stop %s DMA!\n",
           wr? "play" : "rec");
       ad1816_write(ad1816, wr? 8 : 10, 0);
       ad1816_write(ad1816, wr? 9 : 11, 0);
  }
  break;
     }
 ad1816_unlock(ad1816);
     return 0;
}
