
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union mfi_frame {int dummy; } mfi_frame ;
typedef int uint64_t ;
typedef void* uint32_t ;
struct mfi_softc {int mfi_io_lock; } ;
struct TYPE_5__ {uintptr_t target_id; void* data_len; int sense_len; scalar_t__ scsi_status; int flags; scalar_t__ timeout; int cmd; } ;
struct mfi_io_frame {int lba_hi; int lba_lo; int sgl; void* sense_addr_hi; void* sense_addr_lo; TYPE_2__ header; } ;
struct mfi_command {int cm_flags; int cm_total_frame_size; int * cm_sg; int cm_len; int cm_data; struct bio* cm_private; int cm_complete; scalar_t__ cm_sense_busaddr; TYPE_3__* cm_frame; } ;
struct bio {int bio_cmd; int bio_pblkno; int bio_bcount; scalar_t__ bio_driver1; } ;
struct TYPE_4__ {void* context; } ;
struct TYPE_6__ {struct mfi_io_frame io; TYPE_1__ header; } ;




 int MA_OWNED ;
 int MFI_CMD_BIO ;
 int MFI_CMD_DATAIN ;
 int MFI_CMD_DATAOUT ;
 int MFI_CMD_LD_READ ;
 int MFI_CMD_LD_WRITE ;
 int MFI_IO_FRAME_SIZE ;
 int MFI_SECTOR_LEN ;
 int MFI_SENSE_LEN ;
 int bzero (TYPE_3__*,int) ;
 void* howmany (int ,int ) ;
 int mfi_bio_complete ;
 struct mfi_command* mfi_dequeue_free (struct mfi_softc*) ;
 int mtx_assert (int *,int ) ;
 int panic (char*,int) ;
 int unmapped_buf ;

__attribute__((used)) static struct mfi_command *
mfi_build_ldio(struct mfi_softc *sc, struct bio *bio)
{
 struct mfi_io_frame *io;
 struct mfi_command *cm;
 int flags;
 uint32_t blkcount;
 uint32_t context = 0;

 mtx_assert(&sc->mfi_io_lock, MA_OWNED);

 if ((cm = mfi_dequeue_free(sc)) == ((void*)0))
     return (((void*)0));


 context = cm->cm_frame->header.context;
 bzero(cm->cm_frame, sizeof(union mfi_frame));
 cm->cm_frame->header.context = context;
 io = &cm->cm_frame->io;
 switch (bio->bio_cmd) {
 case 129:
  io->header.cmd = MFI_CMD_LD_READ;
  flags = MFI_CMD_DATAIN | MFI_CMD_BIO;
  break;
 case 128:
  io->header.cmd = MFI_CMD_LD_WRITE;
  flags = MFI_CMD_DATAOUT | MFI_CMD_BIO;
  break;
 default:

  panic("Unsupported bio command %x\n", bio->bio_cmd);
 }


 blkcount = howmany(bio->bio_bcount, MFI_SECTOR_LEN);
 io->header.target_id = (uintptr_t)bio->bio_driver1;
 io->header.timeout = 0;
 io->header.flags = 0;
 io->header.scsi_status = 0;
 io->header.sense_len = MFI_SENSE_LEN;
 io->header.data_len = blkcount;
 io->sense_addr_lo = (uint32_t)cm->cm_sense_busaddr;
 io->sense_addr_hi = (uint32_t)((uint64_t)cm->cm_sense_busaddr >> 32);
 io->lba_hi = (bio->bio_pblkno & 0xffffffff00000000) >> 32;
 io->lba_lo = bio->bio_pblkno & 0xffffffff;
 cm->cm_complete = mfi_bio_complete;
 cm->cm_private = bio;
 cm->cm_data = unmapped_buf;
 cm->cm_len = bio->bio_bcount;
 cm->cm_sg = &io->sgl;
 cm->cm_total_frame_size = MFI_IO_FRAME_SIZE;
 cm->cm_flags = flags;

 return (cm);
}
