
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct emu_pcm_info {int * sm; } ;


 struct emu_pcm_info* mix_getdevinfo (struct snd_mixer*) ;
 int mixer_delete (int *) ;

__attribute__((used)) static int
emu_dspmixer_uninit(struct snd_mixer *m)
{
 struct emu_pcm_info *sc;
 int err = 0;


 sc = mix_getdevinfo(m);
 if (sc->sm != ((void*)0))
  err = mixer_delete(sc->sm);
  if (err)
   return (err);
  sc->sm = ((void*)0);
 return (0);
}
