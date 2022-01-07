
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_pcm_info {scalar_t__ lock; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int emu_pcm_uninit (struct emu_pcm_info*) ;
 int free (struct emu_pcm_info*,int ) ;
 struct emu_pcm_info* pcm_getdevinfo (int ) ;
 int pcm_unregister (int ) ;
 int snd_mtxfree (scalar_t__) ;

__attribute__((used)) static int
emu_pcm_detach(device_t dev)
{
 int r;
 struct emu_pcm_info *sc;

 sc = pcm_getdevinfo(dev);

 r = pcm_unregister(dev);

 if (r) return (r);

 emu_pcm_uninit(sc);

 if (sc->lock)
  snd_mtxfree(sc->lock);
 free(sc, M_DEVBUF);

 return (0);
}
