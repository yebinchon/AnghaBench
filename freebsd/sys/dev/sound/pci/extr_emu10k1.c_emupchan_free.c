
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_pchinfo {int buffer; struct sc_info* parent; } ;
struct sc_info {int lock; } ;
typedef int kobj_t ;


 int emu_memfree (struct sc_info*,int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int sndbuf_getbuf (int ) ;

__attribute__((used)) static int
emupchan_free(kobj_t obj, void *data)
{
 struct sc_pchinfo *ch = data;
 struct sc_info *sc = ch->parent;
 int r;

 snd_mtxlock(sc->lock);
 r = emu_memfree(sc, sndbuf_getbuf(ch->buffer));
 snd_mtxunlock(sc->lock);

 return r;
}
