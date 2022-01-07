
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_sc_info {int* mixer_volcache; } ;


 int NUM_MIXERS ;

int
emumix_get_volume(struct emu_sc_info *sc, int mixer_idx)
{
 if ((mixer_idx < NUM_MIXERS) && (mixer_idx >= 0))
  return (sc->mixer_volcache[mixer_idx]);
 return (-1);
}
