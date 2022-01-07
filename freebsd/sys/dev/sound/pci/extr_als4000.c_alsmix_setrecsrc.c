
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct snd_mixer {int dummy; } ;
struct sc_info {int dummy; } ;
struct TYPE_2__ {int iselect; } ;


 int SB16_IMASK_L ;
 int SB16_IMASK_R ;
 int SOUND_MIXER_NRDEVICES ;
 int als_mix_wr (struct sc_info*,int ,int) ;
 TYPE_1__* amt ;
 struct sc_info* mix_getdevinfo (struct snd_mixer*) ;

__attribute__((used)) static u_int32_t
alsmix_setrecsrc(struct snd_mixer *m, u_int32_t src)
{
 struct sc_info *sc = mix_getdevinfo(m);
 u_int32_t i, l, r;

 for (i = l = r = 0; i < SOUND_MIXER_NRDEVICES; i++) {
  if (src & (1 << i)) {
   if (amt[i].iselect == 1) {
    l |= amt[i].iselect;
    r |= amt[i].iselect;
   } else {
    l |= amt[i].iselect;
    r |= amt[i].iselect >> 1;
   }
  }
 }

 als_mix_wr(sc, SB16_IMASK_L, l);
 als_mix_wr(sc, SB16_IMASK_R, r);
 return src;
}
