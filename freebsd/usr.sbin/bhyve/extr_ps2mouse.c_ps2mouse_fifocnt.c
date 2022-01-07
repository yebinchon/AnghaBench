
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; } ;
struct ps2mouse_softc {TYPE_1__ fifo; } ;



int
ps2mouse_fifocnt(struct ps2mouse_softc *sc)
{
 return (sc->fifo.num);
}
