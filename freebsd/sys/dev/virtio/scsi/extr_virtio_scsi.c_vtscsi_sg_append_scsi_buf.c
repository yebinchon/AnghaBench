
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
struct vtscsi_softc {int dummy; } ;
struct sglist {int dummy; } ;
struct ccb_hdr {int flags; } ;
struct ccb_scsiio {void* data_ptr; int sglist_cnt; int dxfer_len; struct ccb_hdr ccb_h; } ;
struct bus_dma_segment {int ds_len; int ds_addr; } ;
struct bio {int dummy; } ;



 int CAM_DATA_MASK ;




 int EINVAL ;
 int sglist_append (struct sglist*,void*,int ) ;
 int sglist_append_bio (struct sglist*,struct bio*) ;
 int sglist_append_phys (struct sglist*,int ,int ) ;

__attribute__((used)) static int
vtscsi_sg_append_scsi_buf(struct vtscsi_softc *sc, struct sglist *sg,
    struct ccb_scsiio *csio)
{
 struct ccb_hdr *ccbh;
 struct bus_dma_segment *dseg;
 int i, error;

 ccbh = &csio->ccb_h;
 error = 0;

 switch ((ccbh->flags & CAM_DATA_MASK)) {
 case 128:
  error = sglist_append(sg, csio->data_ptr, csio->dxfer_len);
  break;
 case 131:
  error = sglist_append_phys(sg,
      (vm_paddr_t)(vm_offset_t) csio->data_ptr, csio->dxfer_len);
  break;
 case 130:
  for (i = 0; i < csio->sglist_cnt && error == 0; i++) {
   dseg = &((struct bus_dma_segment *)csio->data_ptr)[i];
   error = sglist_append(sg,
       (void *)(vm_offset_t) dseg->ds_addr, dseg->ds_len);
  }
  break;
 case 129:
  for (i = 0; i < csio->sglist_cnt && error == 0; i++) {
   dseg = &((struct bus_dma_segment *)csio->data_ptr)[i];
   error = sglist_append_phys(sg,
       (vm_paddr_t) dseg->ds_addr, dseg->ds_len);
  }
  break;
 case 132:
  error = sglist_append_bio(sg, (struct bio *) csio->data_ptr);
  break;
 default:
  error = EINVAL;
  break;
 }

 return (error);
}
