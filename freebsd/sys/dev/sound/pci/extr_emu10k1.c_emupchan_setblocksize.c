
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_pchinfo {int spd; int buffer; int blksz; struct sc_info* parent; } ;
struct sc_info {int timerinterval; int lock; } ;
typedef int kobj_t ;


 int emu_settimer (struct sc_info*) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int sndbuf_getalign (int ) ;

__attribute__((used)) static u_int32_t
emupchan_setblocksize(kobj_t obj, void *data, u_int32_t blocksize)
{
 struct sc_pchinfo *ch = data;
 struct sc_info *sc = ch->parent;
 int irqrate, blksz;

 ch->blksz = blocksize;
 snd_mtxlock(sc->lock);
 emu_settimer(sc);
 irqrate = 48000 / sc->timerinterval;
 snd_mtxunlock(sc->lock);
 blksz = (ch->spd * sndbuf_getalign(ch->buffer)) / irqrate;
 return blocksize;
}
