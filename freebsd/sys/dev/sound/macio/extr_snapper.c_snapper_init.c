
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct snd_mixer {int dummy; } ;
struct snapper_softc {int dummy; } ;
struct TYPE_2__ {int ACR; int RLB_GAIN; int LLB_GAIN; int RLB; int LLB; int MIXER_R; int MIXER_L; int BASS; int TREBLE; int VOLUME; int DRC; int MCR2; int MCR1; int RB6; int RB5; int RB4; int RB3; int RB2; int RB1; int RB0; int LB6; int LB5; int LB4; int LB3; int LB2; int LB1; int LB0; } ;


 int SNAPPER_ACR ;
 int SNAPPER_BASS ;
 int SNAPPER_DRC ;
 int SNAPPER_LB0 ;
 int SNAPPER_LB1 ;
 int SNAPPER_LB2 ;
 int SNAPPER_LB3 ;
 int SNAPPER_LB4 ;
 int SNAPPER_LB5 ;
 int SNAPPER_LB6 ;
 int SNAPPER_LLB ;
 int SNAPPER_LLB_GAIN ;
 int SNAPPER_MCR1 ;
 int SNAPPER_MCR2 ;
 int SNAPPER_MIXER_L ;
 int SNAPPER_MIXER_R ;
 int SNAPPER_RB0 ;
 int SNAPPER_RB1 ;
 int SNAPPER_RB2 ;
 int SNAPPER_RB3 ;
 int SNAPPER_RB4 ;
 int SNAPPER_RB5 ;
 int SNAPPER_RB6 ;
 int SNAPPER_RLB ;
 int SNAPPER_RLB_GAIN ;
 int SNAPPER_TREBLE ;
 int SNAPPER_VOLUME ;
 int SOUND_MASK_VOLUME ;
 struct snapper_softc* device_get_softc (int ) ;
 int mix_getdevinfo (struct snd_mixer*) ;
 int mix_setdevs (struct snd_mixer*,int ) ;
 TYPE_1__ snapper_initdata ;
 int snapper_write (struct snapper_softc*,int ,int ) ;

__attribute__((used)) static int
snapper_init(struct snd_mixer *m)
{
 struct snapper_softc *sc;
 u_int x = 0;

 sc = device_get_softc(mix_getdevinfo(m));

        snapper_write(sc, SNAPPER_LB0, snapper_initdata.LB0);
 snapper_write(sc, SNAPPER_LB1, snapper_initdata.LB1);
 snapper_write(sc, SNAPPER_LB2, snapper_initdata.LB2);
 snapper_write(sc, SNAPPER_LB3, snapper_initdata.LB3);
 snapper_write(sc, SNAPPER_LB4, snapper_initdata.LB4);
 snapper_write(sc, SNAPPER_LB5, snapper_initdata.LB5);
 snapper_write(sc, SNAPPER_LB6, snapper_initdata.LB6);
 snapper_write(sc, SNAPPER_RB0, snapper_initdata.RB0);
 snapper_write(sc, SNAPPER_RB1, snapper_initdata.RB1);
 snapper_write(sc, SNAPPER_RB1, snapper_initdata.RB1);
 snapper_write(sc, SNAPPER_RB2, snapper_initdata.RB2);
 snapper_write(sc, SNAPPER_RB3, snapper_initdata.RB3);
 snapper_write(sc, SNAPPER_RB4, snapper_initdata.RB4);
 snapper_write(sc, SNAPPER_RB5, snapper_initdata.RB5);
 snapper_write(sc, SNAPPER_RB6, snapper_initdata.RB6);
 snapper_write(sc, SNAPPER_MCR1, snapper_initdata.MCR1);
 snapper_write(sc, SNAPPER_MCR2, snapper_initdata.MCR2);
 snapper_write(sc, SNAPPER_DRC, snapper_initdata.DRC);
 snapper_write(sc, SNAPPER_VOLUME, snapper_initdata.VOLUME);
 snapper_write(sc, SNAPPER_TREBLE, snapper_initdata.TREBLE);
 snapper_write(sc, SNAPPER_BASS, snapper_initdata.BASS);
 snapper_write(sc, SNAPPER_MIXER_L, snapper_initdata.MIXER_L);
 snapper_write(sc, SNAPPER_MIXER_R, snapper_initdata.MIXER_R);
 snapper_write(sc, SNAPPER_LLB, snapper_initdata.LLB);
 snapper_write(sc, SNAPPER_RLB, snapper_initdata.RLB);
 snapper_write(sc, SNAPPER_LLB_GAIN, snapper_initdata.LLB_GAIN);
 snapper_write(sc, SNAPPER_RLB_GAIN, snapper_initdata.RLB_GAIN);
 snapper_write(sc, SNAPPER_ACR, snapper_initdata.ACR);

 x |= SOUND_MASK_VOLUME;
 mix_setdevs(m, x);

 return (0);
}
