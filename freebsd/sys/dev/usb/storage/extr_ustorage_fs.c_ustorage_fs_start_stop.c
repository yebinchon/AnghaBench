
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {struct ustorage_fs_lun* currlun; } ;
struct ustorage_fs_softc {TYPE_1__* sc_cbw; TYPE_2__ sc_transfer; } ;
struct ustorage_fs_lun {int sense_data; int removable; } ;
struct TYPE_3__ {int* CBWCDB; } ;


 int SS_INVALID_COMMAND ;

__attribute__((used)) static uint8_t
ustorage_fs_start_stop(struct ustorage_fs_softc *sc)
{
 struct ustorage_fs_lun *currlun = sc->sc_transfer.currlun;
 uint8_t loej;
 uint8_t start;
 uint8_t immed;

 if (!currlun->removable) {
  currlun->sense_data = SS_INVALID_COMMAND;
  return (1);
 }
 immed = sc->sc_cbw->CBWCDB[1] & 0x01;
 loej = sc->sc_cbw->CBWCDB[4] & 0x02;
 start = sc->sc_cbw->CBWCDB[4] & 0x01;

 if (immed || loej || start) {

 }
 return (0);
}
