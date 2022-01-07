
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {struct ustorage_fs_lun* currlun; } ;
struct ustorage_fs_softc {TYPE_2__* sc_cbw; TYPE_1__ sc_transfer; } ;
struct ustorage_fs_lun {scalar_t__ num_sectors; int sense_data; } ;
struct TYPE_4__ {int* CBWCDB; } ;


 int SS_INVALID_FIELD_IN_CDB ;
 int SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE ;
 scalar_t__ get_be16 (int*) ;
 scalar_t__ get_be32 (int*) ;
 int ustorage_fs_min_len (struct ustorage_fs_softc*,int ,unsigned int) ;

__attribute__((used)) static uint8_t
ustorage_fs_verify(struct ustorage_fs_softc *sc)
{
 struct ustorage_fs_lun *currlun = sc->sc_transfer.currlun;
 uint32_t lba;
 uint32_t vlen;
 uint64_t file_offset;
 uint64_t amount_left;




 lba = get_be32(&sc->sc_cbw->CBWCDB[2]);





 if ((sc->sc_cbw->CBWCDB[1] & ~0x10) != 0) {
  currlun->sense_data = SS_INVALID_FIELD_IN_CDB;
  return (1);
 }
 vlen = get_be16(&sc->sc_cbw->CBWCDB[7]);
 if (vlen == 0) {
  goto done;
 }



 amount_left = vlen;
 amount_left <<= 9;
 file_offset = lba;
 file_offset <<= 9;


 vlen += lba;

 if ((vlen < lba) ||
     (vlen > currlun->num_sectors) ||
     (lba >= currlun->num_sectors)) {
  currlun->sense_data = SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE;
  return (1);
 }

done:
 return (ustorage_fs_min_len(sc, 0, -1U));
}
