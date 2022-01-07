
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct mix_table {scalar_t__ avail; scalar_t__ reg; scalar_t__ neg; int bits; int shift; int mute; } ;
struct cs4231_softc {int dummy; } ;


 int ADC_INPUT_GAIN_ENABLE ;
 int CS_LEFT_INPUT_CONTROL ;
 scalar_t__ CS_REG_NONE ;
 int CS_RIGHT_INPUT_CONTROL ;
 int cs4231_read (struct cs4231_softc*,int) ;
 int cs4231_write (struct cs4231_softc*,int,int) ;

__attribute__((used)) static void
cs4231_mixer_set_value(struct cs4231_softc *sc, const struct mix_table *mt,
    u_int8_t v)
{
 u_int8_t mask, reg;
 u_int8_t old, shift, val;

 if (mt->avail == 0 || mt->reg == CS_REG_NONE)
  return;
 reg = mt->reg;
 if (mt->neg != 0)
  val = 100 - v;
 else
  val = v;
 mask = (1 << mt->bits) - 1;
 val = ((val * mask) + 50) / 100;
 shift = mt->shift;
 val <<= shift;
 if (v == 0)
  val |= mt->mute;
 old = cs4231_read(sc, reg);
 old &= ~(mt->mute | (mask << shift));
 val |= old;
 if (reg == CS_LEFT_INPUT_CONTROL || reg == CS_RIGHT_INPUT_CONTROL) {
  if ((val & (mask << shift)) != 0)
   val |= ADC_INPUT_GAIN_ENABLE;
  else
   val &= ~ADC_INPUT_GAIN_ENABLE;
 }
 cs4231_write(sc, reg, val);
}
