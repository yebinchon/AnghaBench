
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int lock; int dev; } ;
struct sc_chinfo {int * data; struct sc_info* parent; } ;
typedef int kobj_t ;


 int M_ENVY24 ;
 int device_printf (int ,char*) ;
 int free (int *,int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
envy24chan_free(kobj_t obj, void *data)
{
 struct sc_chinfo *ch = data;
 struct sc_info *sc = ch->parent;




 snd_mtxlock(sc->lock);
 if (ch->data != ((void*)0)) {
  free(ch->data, M_ENVY24);
  ch->data = ((void*)0);
 }
 snd_mtxunlock(sc->lock);

 return 0;
}
