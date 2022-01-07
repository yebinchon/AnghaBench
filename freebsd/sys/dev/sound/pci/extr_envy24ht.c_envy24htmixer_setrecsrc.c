
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int32_t ;
struct snd_mixer {int dummy; } ;
struct sc_info {int src; int dev; } ;


 int ENVY24HT_CHAN_PLAY_SPDIF ;
 int device_printf (int ,char*,size_t) ;
 int* envy24ht_mixmap ;
 struct sc_info* mix_getdevinfo (struct snd_mixer*) ;

__attribute__((used)) static u_int32_t
envy24htmixer_setrecsrc(struct snd_mixer *m, u_int32_t src)
{
 struct sc_info *sc = mix_getdevinfo(m);
 int ch = envy24ht_mixmap[src];




 if (ch > ENVY24HT_CHAN_PLAY_SPDIF)
  sc->src = ch;
 return src;
}
