
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ccb_scsiio {int dxfer_len; } ;
union ccb {struct ccb_scsiio csio; } ;
typedef int uintmax_t ;
struct TYPE_4__ {int gpa_ofs; int gpa_len; } ;
struct storvsc_gpa_range {int * gpa_page; TYPE_1__ gpa_range; } ;
struct hv_storvsc_request {int prp_cnt; struct storvsc_gpa_range prp_list; union ccb* ccb; } ;
struct TYPE_5__ {int ds_addr; scalar_t__ ds_len; } ;
typedef TYPE_2__ bus_dma_segment_t ;


 int KASSERT (int,char*) ;
 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int atop (int) ;

__attribute__((used)) static void
storvsc_xferbuf_prepare(void *arg, bus_dma_segment_t *segs, int nsegs, int error)
{
 struct hv_storvsc_request *reqp = arg;
 union ccb *ccb = reqp->ccb;
 struct ccb_scsiio *csio = &ccb->csio;
 struct storvsc_gpa_range *prplist;
 int i;

 prplist = &reqp->prp_list;
 prplist->gpa_range.gpa_len = csio->dxfer_len;
 prplist->gpa_range.gpa_ofs = segs[0].ds_addr & PAGE_MASK;

 for (i = 0; i < nsegs; i++) {
  prplist->gpa_page[i] = atop(segs[i].ds_addr);
 }
 reqp->prp_cnt = nsegs;
}
