
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_int16_t ;
typedef int u_char ;
struct TYPE_2__ {int rxl; int rate; } ;
struct sbni_softc {size_t cur_rxl_index; scalar_t__ enaddr; int maxframe; TYPE_1__ csr1; scalar_t__ delta_rxl; } ;
struct sbni_flags {size_t rxl; int mac_addr; int rate; scalar_t__ fixed_rate; scalar_t__ fixed_rxl; } ;


 int DEFAULT_FRAME_LEN ;
 int DEFAULT_RATE ;
 size_t DEF_RXL ;
 scalar_t__ DEF_RXL_DELTA ;
 int htonl (int) ;
 int htons (int) ;
 int read_random (scalar_t__,int) ;
 int * rxl_tab ;

__attribute__((used)) static void
set_initial_values(struct sbni_softc *sc, struct sbni_flags flags)
{
 if (flags.fixed_rxl) {
  sc->delta_rxl = 0;
  sc->cur_rxl_index = flags.rxl;
 } else {
  sc->delta_rxl = DEF_RXL_DELTA;
  sc->cur_rxl_index = DEF_RXL;
 }

 sc->csr1.rate = flags.fixed_rate ? flags.rate : DEFAULT_RATE;
 sc->csr1.rxl = rxl_tab[sc->cur_rxl_index];
 sc->maxframe = DEFAULT_FRAME_LEN;




 *(u_int16_t *) sc->enaddr = htons(0x00ff);
 if (flags.mac_addr) {
  *(u_int32_t *) (sc->enaddr + 2) =
      htonl(flags.mac_addr | 0x01000000);
 } else {
  *(u_char *) (sc->enaddr + 2) = 0x01;
  read_random(sc->enaddr + 3, 3);
 }
}
