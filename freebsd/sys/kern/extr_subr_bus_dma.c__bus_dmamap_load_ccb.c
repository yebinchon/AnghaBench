
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
struct ccb_nvmeio {int sglist_cnt; int dxfer_len; void* data_ptr; } ;
struct ccb_ataio {int dxfer_len; void* data_ptr; } ;
struct ccb_scsiio {int sglist_cnt; int dxfer_len; void* data_ptr; } ;
struct ccb_hdr {int func_code; int flags; } ;
union ccb {struct ccb_nvmeio nvmeio; struct ccb_ataio ataio; struct ccb_scsiio ctio; struct ccb_scsiio csio; struct ccb_hdr ccb_h; } ;
typedef int uint32_t ;
typedef int uint16_t ;
struct bio {int dummy; } ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;
typedef int bus_dma_segment_t ;



 int CAM_DATA_MASK ;
 int _bus_dmamap_load_bio (int ,int ,struct bio*,int*,int) ;
 int _bus_dmamap_load_buffer (int ,int ,void*,int ,int ,int,int *,int*) ;
 int _bus_dmamap_load_phys (int ,int ,int ,int ,int,int *,int*) ;
 int _bus_dmamap_load_plist (int ,int ,int *,int ,int*,int) ;
 int _bus_dmamap_load_vlist (int ,int ,int *,int ,int ,int*,int,int ,int ) ;
 int kernel_pmap ;
 int panic (char*,int) ;

__attribute__((used)) static int
_bus_dmamap_load_ccb(bus_dma_tag_t dmat, bus_dmamap_t map, union ccb *ccb,
      int *nsegs, int flags)
{
 struct ccb_hdr *ccb_h;
 void *data_ptr;
 int error;
 uint32_t dxfer_len;
 uint16_t sglist_cnt;

 error = 0;
 ccb_h = &ccb->ccb_h;
 switch (ccb_h->func_code) {
 case 128: {
  struct ccb_scsiio *csio;

  csio = &ccb->csio;
  data_ptr = csio->data_ptr;
  dxfer_len = csio->dxfer_len;
  sglist_cnt = csio->sglist_cnt;
  break;
 }
 case 131: {
  struct ccb_scsiio *ctio;

  ctio = &ccb->ctio;
  data_ptr = ctio->data_ptr;
  dxfer_len = ctio->dxfer_len;
  sglist_cnt = ctio->sglist_cnt;
  break;
 }
 case 132: {
  struct ccb_ataio *ataio;

  ataio = &ccb->ataio;
  data_ptr = ataio->data_ptr;
  dxfer_len = ataio->dxfer_len;
  sglist_cnt = 0;
  break;
 }
 case 129:
 case 130: {
  struct ccb_nvmeio *nvmeio;

  nvmeio = &ccb->nvmeio;
  data_ptr = nvmeio->data_ptr;
  dxfer_len = nvmeio->dxfer_len;
  sglist_cnt = nvmeio->sglist_cnt;
  break;
 }
 default:
  panic("_bus_dmamap_load_ccb: Unsupported func code %d",
      ccb_h->func_code);
 }

 switch ((ccb_h->flags & CAM_DATA_MASK)) {
 case 133:
  error = _bus_dmamap_load_buffer(dmat, map, data_ptr, dxfer_len,
      kernel_pmap, flags, ((void*)0), nsegs);
  break;
 case 136:
  error = _bus_dmamap_load_phys(dmat, map,
      (vm_paddr_t)(uintptr_t)data_ptr, dxfer_len, flags, ((void*)0),
      nsegs);
  break;
 case 135:
  error = _bus_dmamap_load_vlist(dmat, map,
      (bus_dma_segment_t *)data_ptr, sglist_cnt, kernel_pmap,
      nsegs, flags, 0, dxfer_len);
  break;
 case 134:
  error = _bus_dmamap_load_plist(dmat, map,
      (bus_dma_segment_t *)data_ptr, sglist_cnt, nsegs, flags);
  break;
 case 137:
  error = _bus_dmamap_load_bio(dmat, map, (struct bio *)data_ptr,
      nsegs, flags);
  break;
 default:
  panic("_bus_dmamap_load_ccb: flags 0x%X unimplemented",
      ccb_h->flags);
 }
 return (error);
}
