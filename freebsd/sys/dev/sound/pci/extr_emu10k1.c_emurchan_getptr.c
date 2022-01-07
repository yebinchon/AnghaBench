
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_rchinfo {int idxreg; struct sc_info* parent; } ;
struct sc_info {int lock; } ;
typedef int kobj_t ;


 int emu_rdptr (struct sc_info*,int ,int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static u_int32_t
emurchan_getptr(kobj_t obj, void *data)
{
 struct sc_rchinfo *ch = data;
 struct sc_info *sc = ch->parent;
 int r;

 snd_mtxlock(sc->lock);
 r = emu_rdptr(sc, 0, ch->idxreg) & 0x0000ffff;
 snd_mtxunlock(sc->lock);

 return r;
}
