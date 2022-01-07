
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sc_pcminfo {struct sc_info* sc; } ;
struct sc_info {int lock; } ;
struct sc_chinfo {struct sc_pcminfo* parent; } ;
typedef int kobj_t ;


 int HDSPE_BUF_POSITION_MASK ;
 int HDSPE_STATUS_REG ;
 int hdspe_read_2 (struct sc_info*,int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static uint32_t
hdspechan_getptr(kobj_t obj, void *data)
{
 struct sc_pcminfo *scp;
 struct sc_chinfo *ch;
 struct sc_info *sc;
 uint32_t ret, pos;

 ch = data;
 scp = ch->parent;
 sc = scp->sc;

 snd_mtxlock(sc->lock);
 ret = hdspe_read_2(sc, HDSPE_STATUS_REG);
 snd_mtxunlock(sc->lock);

 pos = ret & HDSPE_BUF_POSITION_MASK;
 pos *= 2;

 return (pos);
}
