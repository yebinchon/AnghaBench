
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_sc_info {int* mixer_volcache; int * mixer_gpr; } ;


 int NUM_MIXERS ;
 int RANGE (int,int ,int) ;
 int emumix_set_fxvol (struct emu_sc_info*,int ,int) ;

void
emumix_set_volume(struct emu_sc_info *sc, int mixer_idx, int volume)
{

 RANGE(volume, 0, 100);
 if (mixer_idx < NUM_MIXERS) {
  sc->mixer_volcache[mixer_idx] = volume;
  emumix_set_fxvol(sc, sc->mixer_gpr[mixer_idx], volume);
 }
}
