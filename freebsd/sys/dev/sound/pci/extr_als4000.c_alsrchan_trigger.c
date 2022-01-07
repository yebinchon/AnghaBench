
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int lock; } ;
struct sc_chinfo {struct sc_info* parent; } ;
typedef int kobj_t ;





 int als_capture_start (struct sc_chinfo*) ;
 int als_capture_stop (struct sc_chinfo*) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
alsrchan_trigger(kobj_t obj, void *data, int go)
{
 struct sc_chinfo *ch = data;
 struct sc_info *sc = ch->parent;

 snd_mtxlock(sc->lock);
 switch(go) {
 case 129:
  als_capture_start(ch);
  break;
 case 128:
 case 130:
  als_capture_stop(ch);
  break;
 }
 snd_mtxunlock(sc->lock);
 return 0;
}
