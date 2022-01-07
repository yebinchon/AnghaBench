
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {struct ustorage_fs_lun* currlun; } ;
struct ustorage_fs_softc {TYPE_1__ sc_transfer; } ;
struct ustorage_fs_lun {int sense_data; } ;


 int SS_INVALID_COMMAND ;

__attribute__((used)) static uint8_t
ustorage_fs_mode_select(struct ustorage_fs_softc *sc)
{
 struct ustorage_fs_lun *currlun = sc->sc_transfer.currlun;


 currlun->sense_data = SS_INVALID_COMMAND;
 return (1);
}
