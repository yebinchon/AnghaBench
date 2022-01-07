
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct tumbler_softc {int dummy; } ;
struct snd_mixer {int dummy; } ;
struct TYPE_2__ {int MIXER2; int MIXER1; int BASS; int TREBLE; int VOLUME; int DRC; int MCR; int RB5; int RB4; int RB3; int RB2; int RB1; int RB0; int LB5; int LB4; int LB3; int LB2; int LB1; int LB0; } ;


 int SOUND_MASK_VOLUME ;
 int TUMBLER_BASS ;
 int TUMBLER_DRC ;
 int TUMBLER_LB0 ;
 int TUMBLER_LB1 ;
 int TUMBLER_LB2 ;
 int TUMBLER_LB3 ;
 int TUMBLER_LB4 ;
 int TUMBLER_LB5 ;
 int TUMBLER_MCR ;
 int TUMBLER_MIXER1 ;
 int TUMBLER_MIXER2 ;
 int TUMBLER_RB0 ;
 int TUMBLER_RB1 ;
 int TUMBLER_RB2 ;
 int TUMBLER_RB3 ;
 int TUMBLER_RB4 ;
 int TUMBLER_RB5 ;
 int TUMBLER_TREBLE ;
 int TUMBLER_VOLUME ;
 struct tumbler_softc* device_get_softc (int ) ;
 int mix_getdevinfo (struct snd_mixer*) ;
 int mix_setdevs (struct snd_mixer*,int ) ;
 TYPE_1__ tumbler_initdata ;
 int tumbler_write (struct tumbler_softc*,int ,int ) ;

__attribute__((used)) static int
tumbler_init(struct snd_mixer *m)
{
 struct tumbler_softc *sc;
 u_int x = 0;

 sc = device_get_softc(mix_getdevinfo(m));

        tumbler_write(sc, TUMBLER_LB0, tumbler_initdata.LB0);
 tumbler_write(sc, TUMBLER_LB1, tumbler_initdata.LB1);
 tumbler_write(sc, TUMBLER_LB2, tumbler_initdata.LB2);
 tumbler_write(sc, TUMBLER_LB3, tumbler_initdata.LB3);
 tumbler_write(sc, TUMBLER_LB4, tumbler_initdata.LB4);
 tumbler_write(sc, TUMBLER_LB5, tumbler_initdata.LB5);
 tumbler_write(sc, TUMBLER_RB0, tumbler_initdata.RB0);
 tumbler_write(sc, TUMBLER_RB1, tumbler_initdata.RB1);
 tumbler_write(sc, TUMBLER_RB1, tumbler_initdata.RB1);
 tumbler_write(sc, TUMBLER_RB2, tumbler_initdata.RB2);
 tumbler_write(sc, TUMBLER_RB3, tumbler_initdata.RB3);
 tumbler_write(sc, TUMBLER_RB4, tumbler_initdata.RB4);
 tumbler_write(sc, TUMBLER_RB5, tumbler_initdata.RB5);
 tumbler_write(sc, TUMBLER_MCR, tumbler_initdata.MCR);
 tumbler_write(sc, TUMBLER_DRC, tumbler_initdata.DRC);
        tumbler_write(sc, TUMBLER_VOLUME, tumbler_initdata.VOLUME);
 tumbler_write(sc, TUMBLER_TREBLE, tumbler_initdata.TREBLE);
 tumbler_write(sc, TUMBLER_BASS, tumbler_initdata.BASS);
 tumbler_write(sc, TUMBLER_MIXER1, tumbler_initdata.MIXER1);
 tumbler_write(sc, TUMBLER_MIXER2, tumbler_initdata.MIXER2);

 x |= SOUND_MASK_VOLUME;
 mix_setdevs(m, x);

 return (0);
}
