
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {struct ustorage_fs_lun* currlun; } ;
struct ustorage_fs_softc {TYPE_1__* sc_cbw; TYPE_2__ sc_transfer; } ;
struct ustorage_fs_lun {int prevent_medium_removal; int sense_data; int removable; } ;
struct TYPE_3__ {int* CBWCDB; } ;


 int SS_INVALID_COMMAND ;
 int SS_INVALID_FIELD_IN_CDB ;

__attribute__((used)) static uint8_t
ustorage_fs_prevent_allow(struct ustorage_fs_softc *sc)
{
 struct ustorage_fs_lun *currlun = sc->sc_transfer.currlun;
 uint8_t prevent;

 if (!currlun->removable) {
  currlun->sense_data = SS_INVALID_COMMAND;
  return (1);
 }
 prevent = sc->sc_cbw->CBWCDB[4] & 0x01;
 if ((sc->sc_cbw->CBWCDB[4] & ~0x01) != 0) {

  currlun->sense_data = SS_INVALID_FIELD_IN_CDB;
  return (1);
 }
 if (currlun->prevent_medium_removal && !prevent) {

 }
 currlun->prevent_medium_removal = prevent;
 return (0);
}
