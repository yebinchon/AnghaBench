
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sc_info {int dummy; } ;
typedef size_t int32_t ;
struct TYPE_2__ {scalar_t__ reg; } ;


 size_t SOUND_MIXER_NRDEVICES ;
 TYPE_1__* mt ;
 int sv_gain (struct sc_info*,size_t,int ,int ) ;

__attribute__((used)) static void
sv_mix_mute_all(struct sc_info *sc)
{
 int32_t i;
 for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
  if (mt[i].reg) sv_gain(sc, i, 0, 0);
 }
}
