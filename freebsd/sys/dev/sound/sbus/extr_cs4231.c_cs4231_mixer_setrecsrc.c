
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct snd_mixer {int dummy; } ;
struct cs4231_softc {int dummy; } ;


 int CS4231_LOCK (struct cs4231_softc*) ;
 int CS4231_UNLOCK (struct cs4231_softc*) ;
 int CS_IN_DAC ;
 int CS_IN_LINE ;
 int CS_IN_MASK ;
 int CS_IN_MIC ;
 int CS_LEFT_INPUT_CONTROL ;
 int CS_RIGHT_INPUT_CONTROL ;



 int cs4231_read (struct cs4231_softc*,int ) ;
 int cs4231_write (struct cs4231_softc*,int ,int) ;
 struct cs4231_softc* mix_getdevinfo (struct snd_mixer*) ;

__attribute__((used)) static u_int32_t
cs4231_mixer_setrecsrc(struct snd_mixer *m, u_int32_t src)
{
 struct cs4231_softc *sc;
 u_int8_t v;

 sc = mix_getdevinfo(m);
 switch (src) {
 case 129:
  v = CS_IN_LINE;
  break;

 case 130:
  v = CS_IN_DAC;
  break;

 case 128:
 default:
  v = CS_IN_MIC;
  src = 128;
  break;
 }
 CS4231_LOCK(sc);
 cs4231_write(sc, CS_LEFT_INPUT_CONTROL,
     (cs4231_read(sc, CS_LEFT_INPUT_CONTROL) & CS_IN_MASK) | v);
 cs4231_write(sc, CS_RIGHT_INPUT_CONTROL,
     (cs4231_read(sc, CS_RIGHT_INPUT_CONTROL) & CS_IN_MASK) | v);
 CS4231_UNLOCK(sc);

 return (src);
}
