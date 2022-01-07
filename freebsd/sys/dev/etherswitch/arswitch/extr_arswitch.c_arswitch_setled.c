
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct arswitch_softc {int numphys; int sc_dev; } ;
struct TYPE_2__ {int shift; int reg; } ;


 int ARSWITCH_LOCK (struct arswitch_softc*) ;
 int ARSWITCH_UNLOCK (struct arswitch_softc*) ;
 int EINVAL ;
 int ETHERSWITCH_PORT_LED_MAX ;
 TYPE_1__** ar8327_led_mapping ;
 int arswitch_modifyreg (int ,int ,int,int) ;
 int* led_pattern_table ;

__attribute__((used)) static int
arswitch_setled(struct arswitch_softc *sc, int phy, int led, int style)
{
 int shift;
 int err;

 if (phy < 0 || phy > sc->numphys)
  return EINVAL;

 if (style < 0 || style > ETHERSWITCH_PORT_LED_MAX)
  return (EINVAL);

 ARSWITCH_LOCK(sc);

 shift = ar8327_led_mapping[phy][led].shift;
 err = (arswitch_modifyreg(sc->sc_dev,
     ar8327_led_mapping[phy][led].reg,
     0x03 << shift, led_pattern_table[style] << shift));
 ARSWITCH_UNLOCK(sc);

 return (err);
}
