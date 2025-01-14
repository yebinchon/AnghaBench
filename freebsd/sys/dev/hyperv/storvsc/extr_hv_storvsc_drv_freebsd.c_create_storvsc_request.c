
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_27__ {int flags; int path; int target_lun; int target_id; } ;
struct TYPE_26__ {int cdb_bytes; int cdb_ptr; } ;
struct ccb_scsiio {scalar_t__ dxfer_len; int sglist_cnt; scalar_t__ data_ptr; int sense_len; int sense_data; int cdb_len; TYPE_6__ cdb_io; } ;
union ccb {TYPE_7__ ccb_h; struct ccb_scsiio csio; } ;
typedef int uint64_t ;
typedef void* uint32_t ;
typedef int u_int16_t ;
struct TYPE_22__ {scalar_t__ gpa_len; int gpa_ofs; } ;
struct storvsc_gpa_range {void** gpa_page; TYPE_2__ gpa_range; } ;
struct TYPE_29__ {int time_out_value; int srb_flags; } ;
struct TYPE_25__ {int cdb; } ;
struct TYPE_18__ {int data_in; TYPE_9__ win8_extension; TYPE_5__ u; int cdb_len; int lun; int target_id; int path_id; int port; } ;
struct TYPE_17__ {TYPE_11__ vm_srb; } ;
struct TYPE_28__ {TYPE_10__ u; } ;
struct hv_storvsc_request {int bounce_sgl_count; int not_aligned_seg_bits; int prp_cnt; TYPE_4__* softc; TYPE_13__* bounce_sgl; TYPE_8__ vstor_packet; struct storvsc_gpa_range prp_list; int data_dmap; union ccb* ccb; int sense_info_len; int * sense_data; } ;
struct TYPE_19__ {scalar_t__ ds_addr; } ;
typedef TYPE_12__ bus_dma_segment_t ;
struct TYPE_23__ {int data_sg_cnt; int data_vaddr_cnt; int data_bio_cnt; } ;
struct TYPE_24__ {TYPE_3__ sysctl_data; int storvsc_req_dtag; } ;
struct TYPE_21__ {scalar_t__ ss_paddr; } ;
struct TYPE_20__ {TYPE_1__* sg_segs; } ;


 int BUS_DMA_NOWAIT ;
 int CAM_CDB_POINTER ;

 int CAM_DATA_MASK ;



 int CAM_DIR_MASK ;


 int EINVAL ;
 int ENOMEM ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int READ_TYPE ;
 int SRB_FLAGS_DATA_IN ;
 int SRB_FLAGS_DATA_OUT ;
 int SRB_FLAGS_DISABLE_SYNCH_TRANSFER ;
 int SRB_FLAGS_NO_DATA_TRANSFER ;
 int STORVSC_DATA_SEGCNT_MAX ;
 int UNKNOWN_TYPE ;
 int WRITE_TYPE ;
 int bus_dmamap_load_ccb (int ,int ,union ccb*,int ,struct hv_storvsc_request*,int ) ;
 int cam_sim_bus (int ) ;
 int cam_sim_unit (int ) ;
 scalar_t__ hv_storvsc_use_win8ext_flags ;
 int memcpy (int *,int ,int ) ;
 int printf (char*,...) ;
 int storvsc_check_bounce_buffer_sgl (TYPE_12__*,int,int*) ;
 int storvsc_copy_sgl_to_bounce_buf (TYPE_13__*,TYPE_12__*,int,int) ;
 TYPE_13__* storvsc_create_bounce_buffer (int,int) ;
 int storvsc_xferbuf_prepare ;
 int vtophys (scalar_t__) ;
 int xpt_path_sim (int ) ;
 int xpt_print (int ,char*,int) ;

__attribute__((used)) static int
create_storvsc_request(union ccb *ccb, struct hv_storvsc_request *reqp)
{
 struct ccb_scsiio *csio = &ccb->csio;
 uint64_t phys_addr;
 uint32_t pfn;
 uint64_t not_aligned_seg_bits = 0;
 int error;


 reqp->vstor_packet.u.vm_srb.port =
  cam_sim_unit(xpt_path_sim(ccb->ccb_h.path));
 reqp->vstor_packet.u.vm_srb.path_id =
  cam_sim_bus(xpt_path_sim(ccb->ccb_h.path));

 reqp->vstor_packet.u.vm_srb.target_id = ccb->ccb_h.target_id;
 reqp->vstor_packet.u.vm_srb.lun = ccb->ccb_h.target_lun;

 reqp->vstor_packet.u.vm_srb.cdb_len = csio->cdb_len;
 if(ccb->ccb_h.flags & CAM_CDB_POINTER) {
  memcpy(&reqp->vstor_packet.u.vm_srb.u.cdb, csio->cdb_io.cdb_ptr,
   csio->cdb_len);
 } else {
  memcpy(&reqp->vstor_packet.u.vm_srb.u.cdb, csio->cdb_io.cdb_bytes,
   csio->cdb_len);
 }

 if (hv_storvsc_use_win8ext_flags) {
  reqp->vstor_packet.u.vm_srb.win8_extension.time_out_value = 60;
  reqp->vstor_packet.u.vm_srb.win8_extension.srb_flags |=
   SRB_FLAGS_DISABLE_SYNCH_TRANSFER;
 }
 switch (ccb->ccb_h.flags & CAM_DIR_MASK) {
 case 128:
  reqp->vstor_packet.u.vm_srb.data_in = WRITE_TYPE;
  if (hv_storvsc_use_win8ext_flags) {
   reqp->vstor_packet.u.vm_srb.win8_extension.srb_flags |=
    SRB_FLAGS_DATA_OUT;
  }
  break;
 case 130:
  reqp->vstor_packet.u.vm_srb.data_in = READ_TYPE;
  if (hv_storvsc_use_win8ext_flags) {
   reqp->vstor_packet.u.vm_srb.win8_extension.srb_flags |=
    SRB_FLAGS_DATA_IN;
  }
  break;
 case 129:
  reqp->vstor_packet.u.vm_srb.data_in = UNKNOWN_TYPE;
  if (hv_storvsc_use_win8ext_flags) {
   reqp->vstor_packet.u.vm_srb.win8_extension.srb_flags |=
    SRB_FLAGS_NO_DATA_TRANSFER;
  }
  break;
 default:
  printf("Error: unexpected data direction: 0x%x\n",
   ccb->ccb_h.flags & CAM_DIR_MASK);
  return (EINVAL);
 }

 reqp->sense_data = &csio->sense_data;
 reqp->sense_info_len = csio->sense_len;

 reqp->ccb = ccb;

 if (0 == csio->dxfer_len) {
  return (0);
 }

 switch (ccb->ccb_h.flags & CAM_DATA_MASK) {
 case 133:
 case 131:
  error = bus_dmamap_load_ccb(reqp->softc->storvsc_req_dtag,
      reqp->data_dmap, ccb, storvsc_xferbuf_prepare, reqp,
      BUS_DMA_NOWAIT);
  if (error) {
   xpt_print(ccb->ccb_h.path,
       "bus_dmamap_load_ccb failed: %d\n", error);
   return (error);
  }
  if ((ccb->ccb_h.flags & CAM_DATA_MASK) == 133)
   reqp->softc->sysctl_data.data_bio_cnt++;
  else
   reqp->softc->sysctl_data.data_vaddr_cnt++;
  break;

 case 132:
 {
  struct storvsc_gpa_range *prplist;
  int i = 0;
  int offset = 0;
  int ret;

  bus_dma_segment_t *storvsc_sglist =
      (bus_dma_segment_t *)ccb->csio.data_ptr;
  u_int16_t storvsc_sg_count = ccb->csio.sglist_cnt;

  prplist = &reqp->prp_list;
  prplist->gpa_range.gpa_len = csio->dxfer_len;

  printf("Storvsc: get SG I/O operation, %d\n",
      reqp->vstor_packet.u.vm_srb.data_in);

  if (storvsc_sg_count > STORVSC_DATA_SEGCNT_MAX){
   printf("Storvsc: %d segments is too much, "
       "only support %d segments\n",
       storvsc_sg_count, STORVSC_DATA_SEGCNT_MAX);
   return (EINVAL);
  }
  ret = storvsc_check_bounce_buffer_sgl(storvsc_sglist,
      storvsc_sg_count, &not_aligned_seg_bits);
  if (ret != -1) {
   reqp->bounce_sgl =
       storvsc_create_bounce_buffer(storvsc_sg_count,
       reqp->vstor_packet.u.vm_srb.data_in);
   if (((void*)0) == reqp->bounce_sgl) {
    printf("Storvsc_error: "
        "create bounce buffer failed.\n");
    return (ENOMEM);
   }

   reqp->bounce_sgl_count = storvsc_sg_count;
   reqp->not_aligned_seg_bits = not_aligned_seg_bits;





   if (WRITE_TYPE == reqp->vstor_packet.u.vm_srb.data_in) {
    storvsc_copy_sgl_to_bounce_buf(
        reqp->bounce_sgl,
        storvsc_sglist,
        storvsc_sg_count,
        reqp->not_aligned_seg_bits);
   }


   if (reqp->not_aligned_seg_bits & 0x1){
     phys_addr =
        vtophys(reqp->bounce_sgl->sg_segs[0].ss_paddr);
   }else{
     phys_addr =
     vtophys(storvsc_sglist[0].ds_addr);
   }
   prplist->gpa_range.gpa_ofs = phys_addr & PAGE_MASK;

   pfn = phys_addr >> PAGE_SHIFT;
   prplist->gpa_page[0] = pfn;

   for (i = 1; i < storvsc_sg_count; i++) {
    if (reqp->not_aligned_seg_bits & (1 << i)) {
     phys_addr =
         vtophys(reqp->bounce_sgl->sg_segs[i].ss_paddr);
    } else {
     phys_addr =
         vtophys(storvsc_sglist[i].ds_addr);
    }

    pfn = phys_addr >> PAGE_SHIFT;
    prplist->gpa_page[i] = pfn;
   }
   reqp->prp_cnt = i;
  } else {
   phys_addr = vtophys(storvsc_sglist[0].ds_addr);

   prplist->gpa_range.gpa_ofs = phys_addr & PAGE_MASK;

   for (i = 0; i < storvsc_sg_count; i++) {
    phys_addr = vtophys(storvsc_sglist[i].ds_addr);
    pfn = phys_addr >> PAGE_SHIFT;
    prplist->gpa_page[i] = pfn;
   }
   reqp->prp_cnt = i;


   offset = phys_addr & PAGE_MASK;
   if (offset) {

    phys_addr =
        vtophys(storvsc_sglist[i-1].ds_addr +
        PAGE_SIZE - offset);
    pfn = phys_addr >> PAGE_SHIFT;
    prplist->gpa_page[i] = pfn;
    reqp->prp_cnt++;
   }

   reqp->bounce_sgl_count = 0;
  }
  reqp->softc->sysctl_data.data_sg_cnt++;
  break;
 }
 default:
  printf("Unknow flags: %d\n", ccb->ccb_h.flags);
  return(EINVAL);
 }

 return(0);
}
