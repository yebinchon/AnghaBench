
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int wanted_fc; } ;
struct sfxge_softc {TYPE_1__ port; } ;



__attribute__((used)) static unsigned int
sfxge_port_wanted_fc(struct sfxge_softc *sc)
{
 return (sc->port.wanted_fc);
}
