
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ciss_softc {scalar_t__ ciss_perf; int ciss_buffer_dmat; } ;
struct ciss_request {int cr_flags; int cr_ccphys; int cr_sg_tag; int cr_datamap; struct ciss_command* cr_cc; struct ciss_softc* cr_sc; } ;
struct TYPE_6__ {int sg_in_list; int sg_total; } ;
struct ciss_command {TYPE_2__ header; TYPE_1__* sg; } ;
struct TYPE_7__ {int ds_len; int ds_addr; } ;
typedef TYPE_3__ bus_dma_segment_t ;
struct TYPE_5__ {scalar_t__ extension; int length; int address; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CISS_REQ_BUSY ;
 int CISS_REQ_DATAIN ;
 int CISS_REQ_DATAOUT ;
 int CISS_SG_1 ;
 int CISS_SG_16 ;
 int CISS_SG_2 ;
 int CISS_SG_32 ;
 int CISS_SG_4 ;
 int CISS_SG_8 ;
 int CISS_SG_MAX ;
 int CISS_SG_NONE ;
 int CISS_TL_PERF_POST_CMD (struct ciss_softc*,struct ciss_request*) ;
 int CISS_TL_SIMPLE_POST_CMD (struct ciss_softc*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int debug_called (int) ;

__attribute__((used)) static void
ciss_request_map_helper(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
    struct ciss_command *cc;
    struct ciss_request *cr;
    struct ciss_softc *sc;
    int i;

    debug_called(2);

    cr = (struct ciss_request *)arg;
    sc = cr->cr_sc;
    cc = cr->cr_cc;

    for (i = 0; i < nseg; i++) {
 cc->sg[i].address = segs[i].ds_addr;
 cc->sg[i].length = segs[i].ds_len;
 cc->sg[i].extension = 0;
    }

    cc->header.sg_in_list = nseg;
    cc->header.sg_total = nseg;

    if (cr->cr_flags & CISS_REQ_DATAIN)
 bus_dmamap_sync(sc->ciss_buffer_dmat, cr->cr_datamap, BUS_DMASYNC_PREREAD);
    if (cr->cr_flags & CISS_REQ_DATAOUT)
 bus_dmamap_sync(sc->ciss_buffer_dmat, cr->cr_datamap, BUS_DMASYNC_PREWRITE);

    if (nseg == 0)
 cr->cr_sg_tag = CISS_SG_NONE;
    else if (nseg == 1)
 cr->cr_sg_tag = CISS_SG_1;
    else if (nseg == 2)
 cr->cr_sg_tag = CISS_SG_2;
    else if (nseg <= 4)
 cr->cr_sg_tag = CISS_SG_4;
    else if (nseg <= 8)
 cr->cr_sg_tag = CISS_SG_8;
    else if (nseg <= 16)
 cr->cr_sg_tag = CISS_SG_16;
    else if (nseg <= 32)
 cr->cr_sg_tag = CISS_SG_32;
    else
 cr->cr_sg_tag = CISS_SG_MAX;




    cr->cr_flags |= CISS_REQ_BUSY;
    if (sc->ciss_perf)
 CISS_TL_PERF_POST_CMD(sc, cr);
    else
 CISS_TL_SIMPLE_POST_CMD(sc, cr->cr_ccphys);
}
