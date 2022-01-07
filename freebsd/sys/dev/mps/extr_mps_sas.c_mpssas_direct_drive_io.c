
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct mpssas_softc {struct mps_softc* sc; } ;
struct mps_softc {scalar_t__ DD_dev_handle; int DD_block_exponent; int DD_max_lba; int DD_stripe_size; int DD_stripe_exponent; int DD_num_phys_disks; TYPE_1__* DD_column_map; } ;
struct TYPE_7__ {scalar_t__ DevHandle; } ;
struct TYPE_8__ {TYPE_2__ SCSIIO; } ;
struct mps_command {int cm_length; int cm_flags; TYPE_3__ cm_desc; scalar_t__ cm_req; } ;
typedef TYPE_5__* pMpi2SCSIIORequest_t ;
struct TYPE_9__ {int* CDB32; } ;
struct TYPE_10__ {scalar_t__ DevHandle; TYPE_4__ CDB; } ;
struct TYPE_6__ {int dev_handle; } ;


 int MPS_CM_FLAGS_DD_IO ;
 int READ_10 ;
 int READ_12 ;
 int READ_16 ;
 int READ_6 ;
 int WRITE_10 ;
 int WRITE_12 ;
 int WRITE_16 ;
 int WRITE_6 ;
 void* htole16 (int ) ;

__attribute__((used)) static void
mpssas_direct_drive_io(struct mpssas_softc *sassc, struct mps_command *cm,
    union ccb *ccb) {
 pMpi2SCSIIORequest_t pIO_req;
 struct mps_softc *sc = sassc->sc;
 uint64_t virtLBA;
 uint32_t physLBA, stripe_offset, stripe_unit;
 uint32_t io_size, column;
 uint8_t *ptrLBA, lba_idx, physLBA_byte, *CDB;







 pIO_req = (pMpi2SCSIIORequest_t)cm->cm_req;
 CDB = pIO_req->CDB.CDB32;




 if ((pIO_req->DevHandle == sc->DD_dev_handle) && ((CDB[0] == READ_6) ||
     (CDB[0] == WRITE_6))) {



  io_size = (cm->cm_length >> sc->DD_block_exponent);




  virtLBA = ((uint64_t)(CDB[1] & 0x1F) << 16) |
      ((uint64_t)CDB[2] << 8) | (uint64_t)CDB[3];





  if ((virtLBA + (uint64_t)io_size - 1) <=
      sc->DD_max_lba) {
   stripe_offset = (uint32_t)virtLBA &
       (sc->DD_stripe_size - 1);
   if ((stripe_offset + io_size) <= sc->DD_stripe_size) {
    physLBA = (uint32_t)virtLBA >>
        sc->DD_stripe_exponent;
    stripe_unit = physLBA / sc->DD_num_phys_disks;
    column = physLBA % sc->DD_num_phys_disks;
    pIO_req->DevHandle =
        htole16(sc->DD_column_map[column].dev_handle);

    cm->cm_desc.SCSIIO.DevHandle =
        pIO_req->DevHandle;

    physLBA = (stripe_unit <<
        sc->DD_stripe_exponent) + stripe_offset;
    ptrLBA = &pIO_req->CDB.CDB32[1];
    physLBA_byte = (uint8_t)(physLBA >> 16);
    *ptrLBA = physLBA_byte;
    ptrLBA = &pIO_req->CDB.CDB32[2];
    physLBA_byte = (uint8_t)(physLBA >> 8);
    *ptrLBA = physLBA_byte;
    ptrLBA = &pIO_req->CDB.CDB32[3];
    physLBA_byte = (uint8_t)physLBA;
    *ptrLBA = physLBA_byte;





    cm->cm_flags |= MPS_CM_FLAGS_DD_IO;
   }
  }
  return;
 }




 if ((pIO_req->DevHandle == sc->DD_dev_handle) && ((CDB[0] == READ_10) ||
     (CDB[0] == WRITE_10) || (CDB[0] == READ_16) ||
     (CDB[0] == WRITE_16) || (CDB[0] == READ_12) ||
     (CDB[0] == WRITE_12))) {







  if ((CDB[0] == READ_10 || CDB[0] == WRITE_10) ||
      (CDB[0] == READ_12 || CDB[0] == WRITE_12) ||
      !(CDB[2] | CDB[3] | CDB[4] | CDB[5])) {



   io_size = (cm->cm_length >> sc->DD_block_exponent);





   lba_idx = ((CDB[0] == READ_12) ||
    (CDB[0] == WRITE_12) ||
    (CDB[0] == READ_10) ||
    (CDB[0] == WRITE_10))? 2 : 6;
   virtLBA = ((uint64_t)CDB[lba_idx] << 24) |
       ((uint64_t)CDB[lba_idx + 1] << 16) |
       ((uint64_t)CDB[lba_idx + 2] << 8) |
       (uint64_t)CDB[lba_idx + 3];





   if ((virtLBA + (uint64_t)io_size - 1) <=
       sc->DD_max_lba) {
    stripe_offset = (uint32_t)virtLBA &
        (sc->DD_stripe_size - 1);
    if ((stripe_offset + io_size) <=
        sc->DD_stripe_size) {
     physLBA = (uint32_t)virtLBA >>
         sc->DD_stripe_exponent;
     stripe_unit = physLBA /
         sc->DD_num_phys_disks;
     column = physLBA %
         sc->DD_num_phys_disks;
     pIO_req->DevHandle =
         htole16(sc->DD_column_map[column].
         dev_handle);
     cm->cm_desc.SCSIIO.DevHandle =
         pIO_req->DevHandle;

     physLBA = (stripe_unit <<
         sc->DD_stripe_exponent) +
         stripe_offset;
     ptrLBA =
         &pIO_req->CDB.CDB32[lba_idx];
     physLBA_byte = (uint8_t)(physLBA >> 24);
     *ptrLBA = physLBA_byte;
     ptrLBA =
         &pIO_req->CDB.CDB32[lba_idx + 1];
     physLBA_byte = (uint8_t)(physLBA >> 16);
     *ptrLBA = physLBA_byte;
     ptrLBA =
         &pIO_req->CDB.CDB32[lba_idx + 2];
     physLBA_byte = (uint8_t)(physLBA >> 8);
     *ptrLBA = physLBA_byte;
     ptrLBA =
         &pIO_req->CDB.CDB32[lba_idx + 3];
     physLBA_byte = (uint8_t)physLBA;
     *ptrLBA = physLBA_byte;





     cm->cm_flags |= MPS_CM_FLAGS_DD_IO;
    }
   }
  } else {




   io_size = (cm->cm_length >> sc->DD_block_exponent);




   virtLBA = ((uint64_t)CDB[2] << 54) |
       ((uint64_t)CDB[3] << 48) |
       ((uint64_t)CDB[4] << 40) |
       ((uint64_t)CDB[5] << 32) |
       ((uint64_t)CDB[6] << 24) |
       ((uint64_t)CDB[7] << 16) |
       ((uint64_t)CDB[8] << 8) |
       (uint64_t)CDB[9];





   if ((virtLBA + (uint64_t)io_size - 1) <=
       sc->DD_max_lba) {
    stripe_offset = (uint32_t)virtLBA &
        (sc->DD_stripe_size - 1);
    if ((stripe_offset + io_size) <=
        sc->DD_stripe_size) {
     physLBA = (uint32_t)(virtLBA >>
         sc->DD_stripe_exponent);
     stripe_unit = physLBA /
         sc->DD_num_phys_disks;
     column = physLBA %
         sc->DD_num_phys_disks;
     pIO_req->DevHandle =
         htole16(sc->DD_column_map[column].
         dev_handle);
     cm->cm_desc.SCSIIO.DevHandle =
         pIO_req->DevHandle;

     physLBA = (stripe_unit <<
         sc->DD_stripe_exponent) +
         stripe_offset;







     pIO_req->CDB.CDB32[2] = 0;
     pIO_req->CDB.CDB32[3] = 0;
     pIO_req->CDB.CDB32[4] = 0;
     pIO_req->CDB.CDB32[5] = 0;
     ptrLBA = &pIO_req->CDB.CDB32[6];
     physLBA_byte = (uint8_t)(physLBA >> 24);
     *ptrLBA = physLBA_byte;
     ptrLBA = &pIO_req->CDB.CDB32[7];
     physLBA_byte = (uint8_t)(physLBA >> 16);
     *ptrLBA = physLBA_byte;
     ptrLBA = &pIO_req->CDB.CDB32[8];
     physLBA_byte = (uint8_t)(physLBA >> 8);
     *ptrLBA = physLBA_byte;
     ptrLBA = &pIO_req->CDB.CDB32[9];
     physLBA_byte = (uint8_t)physLBA;
     *ptrLBA = physLBA_byte;





     cm->cm_flags |= MPS_CM_FLAGS_DD_IO;
    }
   }
  }
 }
}
