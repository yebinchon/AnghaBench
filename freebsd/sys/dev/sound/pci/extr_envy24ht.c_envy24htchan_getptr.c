
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dev; int lock; } ;
struct sc_chinfo {int unit; int dir; struct sc_info* parent; } ;
typedef int kobj_t ;


 int device_printf (int ,char*,...) ;
 int envy24ht_gethwptr (struct sc_info*,int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static u_int32_t
envy24htchan_getptr(kobj_t obj, void *data)
{
 struct sc_chinfo *ch = data;
 struct sc_info *sc = ch->parent;
 u_int32_t ptr, rtn;




 snd_mtxlock(sc->lock);
 ptr = envy24ht_gethwptr(sc, ch->dir);
 rtn = ptr * ch->unit;
 snd_mtxunlock(sc->lock);





 return rtn;
}
