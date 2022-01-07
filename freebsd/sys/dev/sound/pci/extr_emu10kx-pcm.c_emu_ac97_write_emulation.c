
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct emu_pcm_info {int* ac97_state; int card; } ;


 int AC97LEFT (int) ;
 int AC97MUTE (int) ;
 int AC97RIGHT (int) ;




 int BIT4_TO100 (int) ;
 int BIT6_TO100 (int) ;
 int EMU_AC97ADDR ;
 int EMU_AC97DATA ;
 int M_FX0_FRONT_L ;
 int M_FX1_FRONT_R ;
 int M_MASTER_FRONT_L ;
 int M_MASTER_FRONT_R ;
 int M_MASTER_REC_L ;
 int M_MASTER_REC_R ;
 int emu_wr (int ,int ,int,int) ;
 int emumix_set_volume (int ,int ,int) ;

__attribute__((used)) static void
emu_ac97_write_emulation(struct emu_pcm_info *sc, int regno, uint32_t data)
{
 int write_ac97;
 int left, right;
 uint32_t emu_left, emu_right;
 int is_mute;

 write_ac97 = 1;

 left = AC97LEFT(data);
 emu_left = BIT6_TO100(left);
 right = AC97RIGHT(data);
 emu_right = BIT6_TO100(right);
 is_mute = AC97MUTE(data);
 if (is_mute)
  emu_left = emu_right = 0;

 switch (regno) {

 case 131:
  emumix_set_volume(sc->card, M_MASTER_FRONT_L, emu_left);
  emumix_set_volume(sc->card, M_MASTER_FRONT_R, emu_right);
  sc->ac97_state[131] = data & (0x8000 | 0x3f3f);
  data = 0x8000;
  break;
 case 130:
  emumix_set_volume(sc->card, M_FX0_FRONT_L, emu_left);
  emumix_set_volume(sc->card, M_FX1_FRONT_R, emu_right);
  sc->ac97_state[130] = data & (0x8000 | 0x3f3f);
  data = 0x8000;
  break;
 case 128:






  data = 0x0505;
  break;
 case 129:
  emu_left = BIT4_TO100(left);
  emu_right = BIT4_TO100(right);
  emumix_set_volume(sc->card, M_MASTER_REC_L, 100-emu_left);
  emumix_set_volume(sc->card, M_MASTER_REC_R, 100-emu_right);






  sc->ac97_state[129] = data & (0x8000 | 0x0f0f);
  data = 0x0000;
  break;
 }
 if (write_ac97) {
  emu_wr(sc->card, EMU_AC97ADDR, regno, 1);
  emu_wr(sc->card, EMU_AC97DATA, data, 2);
 }
}
