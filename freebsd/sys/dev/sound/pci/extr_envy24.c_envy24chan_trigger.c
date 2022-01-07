
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct sc_info {int* run; int* blk; int lock; TYPE_3__* chan; int * intr; int dev; int speed; TYPE_1__* caps; } ;
struct sc_chinfo {scalar_t__ dir; int offset; int blk; int size; int unit; int run; int num; int (* emldma ) (struct sc_chinfo*) ;TYPE_2__* channel; int speed; struct sc_info* parent; } ;
typedef int kobj_t ;
struct TYPE_6__ {scalar_t__ dir; int run; int blk; } ;
struct TYPE_5__ {int speed; } ;
struct TYPE_4__ {int maxspeed; int minspeed; } ;


 int ENVY24_CHAN_NUM ;
 int ENVY24_SAMPLE_NUM ;
 scalar_t__ PCMDIR_PLAY ;




 int device_printf (int ,char*,...) ;
 int envy24_gethwptr (struct sc_info*,scalar_t__) ;
 int envy24_mutevolume (struct sc_info*,int ) ;
 int envy24_setspeed (struct sc_info*,int ) ;
 int envy24_setvolume (struct sc_info*,int ) ;
 int envy24_start (struct sc_info*,scalar_t__) ;
 int envy24_stop (struct sc_info*,scalar_t__) ;
 int envy24_updintr (struct sc_info*,scalar_t__) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int stub1 (struct sc_chinfo*) ;
 int stub2 (struct sc_chinfo*) ;
 int stub3 (struct sc_chinfo*) ;

__attribute__((used)) static int
envy24chan_trigger(kobj_t obj, void *data, int go)
{
 struct sc_chinfo *ch = data;
 struct sc_info *sc = ch->parent;
 u_int32_t ptr;
 int slot;
 int error = 0;





 snd_mtxlock(sc->lock);
 if (ch->dir == PCMDIR_PLAY)
  slot = 0;
 else
  slot = 1;
 switch (go) {
 case 128:




  if (sc->run[0] == 0 && sc->run[1] == 0) {
   sc->speed = envy24_setspeed(sc, ch->speed);
   sc->caps[0].minspeed = sc->caps[0].maxspeed = sc->speed;
   sc->caps[1].minspeed = sc->caps[1].maxspeed = sc->speed;
  }
  else if (ch->speed != 0 && ch->speed != sc->speed) {
   error = -1;
   goto fail;
  }
  if (ch->speed == 0)
   ch->channel->speed = sc->speed;

  sc->run[slot]++;
  if (sc->run[slot] == 1) {

   ch->offset = 0;
   sc->blk[slot] = ch->blk;
  }
  else {
   ptr = envy24_gethwptr(sc, ch->dir);
   ch->offset = ((ptr / ch->blk + 1) * ch->blk %
       (ch->size / 4)) * 4 / ch->unit;
   if (ch->blk < sc->blk[slot])
    sc->blk[slot] = ch->blk;
  }
  if (ch->dir == PCMDIR_PLAY) {
   ch->emldma(ch);
   envy24_setvolume(sc, ch->num);
  }
  envy24_updintr(sc, ch->dir);
  if (sc->run[slot] == 1)
   envy24_start(sc, ch->dir);
  ch->run = 1;
  break;
 case 129:



  if (ch->run != 1) {
   error = -1;
   goto fail;
  }
  ch->emldma(ch);
  break;
 case 130:



  if (ch->run != 1) {
   error = -1;
   goto fail;
  }
  ch->emldma(ch);
  break;
 case 131:
  if (ch->run) {



  ch->run = 0;
  sc->run[slot]--;
  if (ch->dir == PCMDIR_PLAY)
   envy24_mutevolume(sc, ch->num);
  if (sc->run[slot] == 0) {
   envy24_stop(sc, ch->dir);
   sc->intr[slot] = 0;
  }
  }
  break;
 }
fail:
 snd_mtxunlock(sc->lock);
 return (error);
}
