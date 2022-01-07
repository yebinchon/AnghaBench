
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {int dummy; } ;
struct sc_pchinfo {int blksz; int spd; struct snd_dbuf* buffer; void* slave; void* master; int fmt; struct pcm_channel* channel; struct sc_info* parent; } ;
struct sc_info {int bufsz; int lock; int pnum; struct sc_pchinfo* pch; } ;
struct pcm_channel {int dummy; } ;
typedef int kobj_t ;


 int AFMT_U8 ;
 int KASSERT (int,char*) ;
 int PCMDIR_PLAY ;
 int SND_FORMAT (int ,int,int ) ;
 void* emu_valloc (struct sc_info*) ;
 scalar_t__ emu_vinit (struct sc_info*,void*,void*,int,struct snd_dbuf*) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static void *
emupchan_init(kobj_t obj, void *devinfo, struct snd_dbuf *b,
    struct pcm_channel *c, int dir)
{
 struct sc_info *sc = devinfo;
 struct sc_pchinfo *ch;
 void *r;

 KASSERT(dir == PCMDIR_PLAY, ("emupchan_init: bad direction"));
 ch = &sc->pch[sc->pnum++];
 ch->buffer = b;
 ch->parent = sc;
 ch->channel = c;
 ch->blksz = sc->bufsz / 2;
 ch->fmt = SND_FORMAT(AFMT_U8, 1, 0);
 ch->spd = 8000;
 snd_mtxlock(sc->lock);
 ch->master = emu_valloc(sc);
 ch->slave = emu_valloc(sc);
 snd_mtxunlock(sc->lock);
 r = (emu_vinit(sc, ch->master, ch->slave, sc->bufsz, ch->buffer))
     ? ((void*)0) : ch;

 return r;
}
