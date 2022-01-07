
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct udl_softc {unsigned int sc_cur_mode; } ;
struct TYPE_2__ {scalar_t__ vdisplay; scalar_t__ hdisplay; } ;


 TYPE_1__* udl_modes ;

__attribute__((used)) static uint32_t
udl_get_fb_size(struct udl_softc *sc)
{
 unsigned i = sc->sc_cur_mode;

 return ((uint32_t)udl_modes[i].hdisplay *
     (uint32_t)udl_modes[i].vdisplay * 2);
}
