
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_pcminfo {int dev; struct sc_info* sc; } ;
struct sc_info {int lock; } ;
struct sc_chinfo {int * data; struct sc_pcminfo* parent; } ;
typedef int kobj_t ;


 int M_HDSPE ;
 int device_printf (int ,char*) ;
 int free (int *,int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
hdspechan_free(kobj_t obj, void *data)
{
 struct sc_pcminfo *scp;
 struct sc_chinfo *ch;
 struct sc_info *sc;

 ch = data;
 scp = ch->parent;
 sc = scp->sc;





 snd_mtxlock(sc->lock);
 if (ch->data != ((void*)0)) {
  free(ch->data, M_HDSPE);
  ch->data = ((void*)0);
 }
 snd_mtxunlock(sc->lock);

 return (0);
}
