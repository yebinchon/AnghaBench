
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct emu_pcm_info {unsigned int** emu10k1_volcache; int dev; int * sm; int card; int is_emu10k1; int mch_disabled; int route; } ;


 int M_FX2_REAR_L ;
 int M_FX3_REAR_R ;
 int M_FX4_CENTER ;
 int M_FX5_SUBWOOFER ;
 int M_IN0_FRONT_L ;
 int M_IN0_FRONT_R ;
 int M_IN1_FRONT_L ;
 int M_IN1_FRONT_R ;
 int M_IN2_FRONT_L ;
 int M_IN2_FRONT_R ;
 int M_IN3_FRONT_L ;
 int M_IN3_FRONT_R ;
 int M_IN4_FRONT_L ;
 int M_IN4_FRONT_R ;
 int M_IN5_FRONT_L ;
 int M_IN5_FRONT_R ;
 int M_IN6_FRONT_L ;
 int M_IN6_FRONT_R ;
 int M_MASTER_CENTER ;
 int M_MASTER_REAR_L ;
 int M_MASTER_REAR_R ;
 int M_MASTER_SUBWOOFER ;
 int device_printf (int ,char*,unsigned int) ;
 int emumix_set_volume (int ,int ,int) ;
 struct emu_pcm_info* mix_getdevinfo (struct snd_mixer*) ;
 int mix_set (int *,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int
emu_dspmixer_set(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
{
 struct emu_pcm_info *sc;

 sc = mix_getdevinfo(m);

 switch (dev) {
 case 128:
  switch (sc->route) {
  case 137:
   if (sc->sm != ((void*)0))
    mix_set(sc->sm, dev, left, right);
   if (sc->mch_disabled) {




    if (sc->is_emu10k1) {
     sc->emu10k1_volcache[0][0] = left;
     left = left * sc->emu10k1_volcache[1][0] / 100;
     sc->emu10k1_volcache[0][1] = right;
     right = right * sc->emu10k1_volcache[1][1] / 100;
    }

    emumix_set_volume(sc->card, M_MASTER_REAR_L, left);
    emumix_set_volume(sc->card, M_MASTER_REAR_R, right);
    if (!sc->is_emu10k1) {
     emumix_set_volume(sc->card, M_MASTER_CENTER, (left+right)/2);
     emumix_set_volume(sc->card, M_MASTER_SUBWOOFER, (left+right)/2);

    }
   }
   break;
  case 136:
   emumix_set_volume(sc->card, M_MASTER_REAR_L, left);
   emumix_set_volume(sc->card, M_MASTER_REAR_R, right);
   break;
  case 138:
   emumix_set_volume(sc->card, M_MASTER_CENTER, (left+right)/2);
   break;
  case 135:
   emumix_set_volume(sc->card, M_MASTER_SUBWOOFER, (left+right)/2);
   break;
  }
  break;
 case 129:
  switch (sc->route) {
  case 137:
   if (sc->sm != ((void*)0))
    mix_set(sc->sm, dev, left, right);
   if (sc->mch_disabled) {

    if (sc->is_emu10k1) {
     sc->emu10k1_volcache[1][0] = left;
     left = left * sc->emu10k1_volcache[0][0] / 100;
     sc->emu10k1_volcache[1][1] = right;
     right = right * sc->emu10k1_volcache[0][1] / 100;
    }
    emumix_set_volume(sc->card, M_MASTER_REAR_L, left);
    emumix_set_volume(sc->card, M_MASTER_REAR_R, right);

    if (!sc->is_emu10k1) {
     emumix_set_volume(sc->card, M_MASTER_CENTER, (left+right)/2);
     emumix_set_volume(sc->card, M_MASTER_SUBWOOFER, (left+right)/2);

    }
   }
   break;
  case 136:
   emumix_set_volume(sc->card, M_FX2_REAR_L, left);
   emumix_set_volume(sc->card, M_FX3_REAR_R, right);
   break;
  case 138:
   emumix_set_volume(sc->card, M_FX4_CENTER, (left+right)/2);
   break;
  case 135:
   emumix_set_volume(sc->card, M_FX5_SUBWOOFER, (left+right)/2);
   break;
  }
  break;
 case 134:
   emumix_set_volume(sc->card, M_IN1_FRONT_L, left);
   emumix_set_volume(sc->card, M_IN1_FRONT_R, right);
  break;
 case 133:
   if (sc->is_emu10k1) {

    emumix_set_volume(sc->card, M_IN3_FRONT_L, left);
    emumix_set_volume(sc->card, M_IN3_FRONT_R, right);
   } else {

    emumix_set_volume(sc->card, M_IN2_FRONT_L, left);
    emumix_set_volume(sc->card, M_IN2_FRONT_R, right);
   }
  break;
 case 131:
   emumix_set_volume(sc->card, M_IN4_FRONT_L, left);
   emumix_set_volume(sc->card, M_IN4_FRONT_R, right);
  break;
 case 132:
   emumix_set_volume(sc->card, M_IN5_FRONT_L, left);
   emumix_set_volume(sc->card, M_IN5_FRONT_R, right);
  break;
 case 130:
   emumix_set_volume(sc->card, M_IN6_FRONT_L, left);
   emumix_set_volume(sc->card, M_IN6_FRONT_R, right);
  break;
 default:
  if (sc->sm != ((void*)0)) {

   emumix_set_volume(sc->card, M_IN0_FRONT_L, 100);
   emumix_set_volume(sc->card, M_IN0_FRONT_R, 100);
   mix_set(sc->sm, dev, left, right);
  } else
   device_printf(sc->dev, "mixer error: unknown device %d\n", dev);
 }
 return (0);
}
