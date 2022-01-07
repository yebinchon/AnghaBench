
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int lock; } ;
struct sc_chinfo {int buffer; int gcr_fifo_status; struct sc_info* parent; } ;
typedef int kobj_t ;
typedef int int32_t ;


 int als_gcr_rd (struct sc_info*,int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int sndbuf_getsize (int ) ;

__attribute__((used)) static u_int32_t
alschan_getptr(kobj_t obj, void *data)
{
 struct sc_chinfo *ch = data;
 struct sc_info *sc = ch->parent;
 int32_t pos, sz;

 snd_mtxlock(sc->lock);
 pos = als_gcr_rd(ch->parent, ch->gcr_fifo_status) & 0xffff;
 snd_mtxunlock(sc->lock);
 sz = sndbuf_getsize(ch->buffer);
 return (2 * sz - pos - 1) % sz;
}
