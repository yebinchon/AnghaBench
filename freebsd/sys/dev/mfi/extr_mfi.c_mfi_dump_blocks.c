
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
struct mfi_softc {int mfi_buffer_dmat; int mfi_dev; } ;
struct TYPE_5__ {int target_id; int data_len; int sense_len; scalar_t__ scsi_status; scalar_t__ flags; scalar_t__ timeout; int cmd; } ;
struct mfi_io_frame {int lba_hi; int lba_lo; int sgl; void* sense_addr_hi; void* sense_addr_lo; TYPE_2__ header; } ;
struct mfi_command {int cm_len; int cm_flags; int cm_dmamap; int cm_total_frame_size; int * cm_sg; void* cm_data; scalar_t__ cm_sense_busaddr; TYPE_3__* cm_frame; } ;
struct TYPE_4__ {void* context; } ;
struct TYPE_6__ {struct mfi_io_frame io; TYPE_1__ header; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int EBUSY ;
 int MFI_CMD_DATAOUT ;
 int MFI_CMD_LD_WRITE ;
 int MFI_CMD_POLLED ;
 int MFI_IO_FRAME_SIZE ;
 int MFI_SECTOR_LEN ;
 int MFI_SENSE_LEN ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bzero (TYPE_3__*,int) ;
 int device_printf (int ,char*) ;
 int howmany (int,int ) ;
 struct mfi_command* mfi_dequeue_free (struct mfi_softc*) ;
 int mfi_mapcmd (struct mfi_softc*,struct mfi_command*) ;
 int mfi_release_command (struct mfi_command*) ;

int
mfi_dump_blocks(struct mfi_softc *sc, int id, uint64_t lba, void *virt,
     int len)
{
 struct mfi_command *cm;
 struct mfi_io_frame *io;
 int error;
 uint32_t context = 0;

 if ((cm = mfi_dequeue_free(sc)) == ((void*)0))
  return (EBUSY);


 context = cm->cm_frame->header.context;
 bzero(cm->cm_frame, sizeof(union mfi_frame));
 cm->cm_frame->header.context = context;

 io = &cm->cm_frame->io;
 io->header.cmd = MFI_CMD_LD_WRITE;
 io->header.target_id = id;
 io->header.timeout = 0;
 io->header.flags = 0;
 io->header.scsi_status = 0;
 io->header.sense_len = MFI_SENSE_LEN;
 io->header.data_len = howmany(len, MFI_SECTOR_LEN);
 io->sense_addr_lo = (uint32_t)cm->cm_sense_busaddr;
 io->sense_addr_hi = (uint32_t)((uint64_t)cm->cm_sense_busaddr >> 32);
 io->lba_hi = (lba & 0xffffffff00000000) >> 32;
 io->lba_lo = lba & 0xffffffff;
 cm->cm_data = virt;
 cm->cm_len = len;
 cm->cm_sg = &io->sgl;
 cm->cm_total_frame_size = MFI_IO_FRAME_SIZE;
 cm->cm_flags = MFI_CMD_POLLED | MFI_CMD_DATAOUT;

 if ((error = mfi_mapcmd(sc, cm)) != 0)
  device_printf(sc->mfi_dev, "failed dump blocks\n");
 bus_dmamap_sync(sc->mfi_buffer_dmat, cm->cm_dmamap,
     BUS_DMASYNC_POSTWRITE);
 bus_dmamap_unload(sc->mfi_buffer_dmat, cm->cm_dmamap);
 mfi_release_command(cm);

 return (error);
}
