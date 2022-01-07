
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_pcm_info {int* ac97_state; int card; } ;






 int EMU_AC97ADDR ;
 int EMU_AC97DATA ;
 int emu_rd (int ,int ,int) ;
 int emu_wr (int ,int ,int,int) ;

__attribute__((used)) static int
emu_ac97_read_emulation(struct emu_pcm_info *sc, int regno)
{
 int use_ac97;
 int emulated;
 int tmp;

 use_ac97 = 1;
 emulated = 0;

 switch (regno) {
 case 131:
  emulated = sc->ac97_state[131];
  use_ac97 = 0;
  break;
 case 130:
  emulated = sc->ac97_state[130];
  use_ac97 = 0;
  break;
 case 128:
  emulated = 0x0505;
  use_ac97 = 0;
  break;
 case 129:
  emulated = sc->ac97_state[129];
  use_ac97 = 0;
  break;
 }

 emu_wr(sc->card, EMU_AC97ADDR, regno, 1);
 tmp = emu_rd(sc->card, EMU_AC97DATA, 2);

 if (use_ac97)
  emulated = tmp;

 return (emulated);
}
