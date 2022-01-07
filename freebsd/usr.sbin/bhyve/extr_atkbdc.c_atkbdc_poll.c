
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atkbdc_softc {int dummy; } ;


 int atkbdc_aux_poll (struct atkbdc_softc*) ;
 int atkbdc_kbd_poll (struct atkbdc_softc*) ;

__attribute__((used)) static void
atkbdc_poll(struct atkbdc_softc *sc)
{
 atkbdc_aux_poll(sc);
 atkbdc_kbd_poll(sc);
}
