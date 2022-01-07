
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int data_rem; scalar_t__ cbw_dir; int data_short; } ;
struct ustorage_fs_softc {TYPE_1__ sc_transfer; TYPE_2__* sc_csw; } ;
struct TYPE_4__ {int bCSWStatus; } ;


 int CSWSTATUS_PHASE ;
 scalar_t__ DIR_READ ;

__attribute__((used)) static uint8_t
ustorage_fs_min_len(struct ustorage_fs_softc *sc, uint32_t len, uint32_t mask)
{
 if (len != sc->sc_transfer.data_rem) {

  if (sc->sc_transfer.cbw_dir == DIR_READ) {




   sc->sc_csw->bCSWStatus = CSWSTATUS_PHASE;
   return (1);
  }


  if (sc->sc_transfer.data_rem > len) {

   sc->sc_transfer.data_rem = len;
   sc->sc_transfer.data_short = 1;
  }


  if (sc->sc_transfer.data_rem & ~mask) {

   sc->sc_transfer.data_rem &= mask;
   sc->sc_transfer.data_short = 1;
  }
 }
 return (0);
}
