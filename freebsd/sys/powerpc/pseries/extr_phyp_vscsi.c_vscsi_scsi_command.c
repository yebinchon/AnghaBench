
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int* cdb_ptr; int* cdb_bytes; } ;
struct TYPE_9__ {int cdb_len; TYPE_1__ cdb_io; } ;
struct TYPE_8__ {int flags; int target_lun; } ;
union ccb {TYPE_3__ csio; TYPE_2__ ccb_h; } ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct vscsi_xfer {int srp_iu_size; int srp_iu_offset; TYPE_4__* sc; union ccb* ccb; } ;
struct vscsi_crq {int iu_length; int valid; int format; int iu_data; } ;
struct srp_cmd {int additional_cdb; int tag; int formats; int * data_payload; int lun; int * cdb; int type; } ;
struct TYPE_11__ {int ds_len; int ds_addr; } ;
typedef TYPE_5__ bus_dma_segment_t ;
struct TYPE_10__ {int srp_iu_phys; int unit; int crq_map; int crq_tag; scalar_t__ srp_iu_queue; int srp_iu_arena; int io_lock; } ;


 int BUS_DMASYNC_PREWRITE ;
 int CAM_CDB_POINTER ;

 int CAM_DIR_MASK ;

 int CAM_EXTLUN_BYTE_SWIZZLE (int ) ;
 int H_SEND_CRQ ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int M_BESTFIT ;
 int M_NOWAIT ;
 int SRP_CMD ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bzero (struct srp_cmd*,int) ;
 int htobe64 (int ) ;
 int memcpy (int *,int*,int) ;
 int mtx_assert (int *,int ) ;
 int panic (char*,int) ;
 int phyp_hcall (int ,int ,int,int) ;
 int roundup (int,int) ;
 int vmem_alloc (int ,int,int,int*) ;

__attribute__((used)) static void
vscsi_scsi_command(void *xxp, bus_dma_segment_t *segs, int nsegs, int err)
{
 struct vscsi_xfer *xp = xxp;
 uint8_t *cdb;
 union ccb *ccb = xp->ccb;
 struct srp_cmd *cmd;
 uint64_t chunk_addr;
 uint32_t chunk_size;
 int desc_start, i;
 struct vscsi_crq crq;

 KASSERT(err == 0, ("DMA error %d\n", err));

 mtx_assert(&xp->sc->io_lock, MA_OWNED);

 cdb = (ccb->ccb_h.flags & CAM_CDB_POINTER) ?
     ccb->csio.cdb_io.cdb_ptr : ccb->csio.cdb_io.cdb_bytes;


 crq.iu_length = 48 + ((nsegs > 1) ? 20 : 16) +
     ((ccb->csio.cdb_len > 16) ? (ccb->csio.cdb_len - 16) : 0);
 xp->srp_iu_size = crq.iu_length;
 if (nsegs > 1)
  xp->srp_iu_size += nsegs*16;
 xp->srp_iu_size = roundup(xp->srp_iu_size, 16);
 err = vmem_alloc(xp->sc->srp_iu_arena, xp->srp_iu_size,
     M_BESTFIT | M_NOWAIT, &xp->srp_iu_offset);
 if (err)
  panic("Error during VMEM allocation (%d)", err);

 cmd = (struct srp_cmd *)((uint8_t *)xp->sc->srp_iu_queue +
     (uintptr_t)xp->srp_iu_offset);
 bzero(cmd, xp->srp_iu_size);
 cmd->type = SRP_CMD;
 if (ccb->csio.cdb_len > 16)
  cmd->additional_cdb = (ccb->csio.cdb_len - 16) << 2;
 memcpy(cmd->cdb, cdb, ccb->csio.cdb_len);

 cmd->tag = (uint64_t)(xp);
 cmd->lun = htobe64(CAM_EXTLUN_BYTE_SWIZZLE(ccb->ccb_h.target_lun));

 if (nsegs > 1) {

  switch (ccb->ccb_h.flags & CAM_DIR_MASK) {
  case 128:
   cmd->formats = (2 << 4);
   break;
  case 129:
   cmd->formats = 2;
   break;
  default:
   panic("Does not support bidirectional commands (%d)",
       ccb->ccb_h.flags & CAM_DIR_MASK);
   break;
  }

  desc_start = ((ccb->csio.cdb_len > 16) ?
      ccb->csio.cdb_len - 16 : 0);
  chunk_addr = xp->sc->srp_iu_phys + xp->srp_iu_offset + 20 +
      desc_start + sizeof(*cmd);
  chunk_size = 16*nsegs;
  memcpy(&cmd->data_payload[desc_start], &chunk_addr, 8);
  memcpy(&cmd->data_payload[desc_start+12], &chunk_size, 4);
  chunk_size = 0;
  for (i = 0; i < nsegs; i++)
   chunk_size += segs[i].ds_len;
  memcpy(&cmd->data_payload[desc_start+16], &chunk_size, 4);
  desc_start += 20;
  for (i = 0; i < nsegs; i++) {
   chunk_addr = segs[i].ds_addr;
   chunk_size = segs[i].ds_len;

   memcpy(&cmd->data_payload[desc_start + 16*i],
       &chunk_addr, 8);

   memcpy(&cmd->data_payload[desc_start + 16*i + 12],
       &chunk_size, 4);
  }
 } else if (nsegs == 1) {
  switch (ccb->ccb_h.flags & CAM_DIR_MASK) {
  case 128:
   cmd->formats = (1 << 4);
   break;
  case 129:
   cmd->formats = 1;
   break;
  default:
   panic("Does not support bidirectional commands (%d)",
       ccb->ccb_h.flags & CAM_DIR_MASK);
   break;
  }
  chunk_addr = segs[0].ds_addr;
  chunk_size = segs[0].ds_len;
  desc_start = ((ccb->csio.cdb_len > 16) ?
      ccb->csio.cdb_len - 16 : 0);

  memcpy(&cmd->data_payload[desc_start], &chunk_addr, 8);

  memcpy(&cmd->data_payload[desc_start+12], &chunk_size, 4);
  KASSERT(xp->srp_iu_size >= 48 + ((ccb->csio.cdb_len > 16) ?
      ccb->csio.cdb_len : 16), ("SRP IU command length"));
 } else {
  cmd->formats = 0;
 }
 bus_dmamap_sync(xp->sc->crq_tag, xp->sc->crq_map, BUS_DMASYNC_PREWRITE);


 crq.valid = 0x80;
 crq.format = 0x01;
 crq.iu_data = xp->sc->srp_iu_phys + xp->srp_iu_offset;

 err = phyp_hcall(H_SEND_CRQ, xp->sc->unit, ((uint64_t *)(&crq))[0],
     ((uint64_t *)(&crq))[1]);
 if (err != 0)
  panic("CRQ send failure (%d)", err);
}
