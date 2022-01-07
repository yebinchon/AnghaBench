
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct vscsi_softc {int n_crqs; int srp_iu_arena; int srp_iu_phys; scalar_t__ crq_queue; int * srp_iu_queue; int crq_phys; } ;
struct vscsi_crq {int dummy; } ;
struct TYPE_3__ {scalar_t__ ds_len; int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int M_BESTFIT ;
 int M_NOWAIT ;
 int PAGE_SIZE ;
 int vmem_create (char*,int,scalar_t__,int,int ,int) ;

__attribute__((used)) static void
vscsi_crq_load_cb(void *xsc, bus_dma_segment_t *segs, int nsegs, int err)
{
 struct vscsi_softc *sc = xsc;

 sc->crq_phys = segs[0].ds_addr;
 sc->n_crqs = PAGE_SIZE/sizeof(struct vscsi_crq);

 sc->srp_iu_queue = (uint8_t *)(sc->crq_queue);
 sc->srp_iu_phys = segs[0].ds_addr;
 sc->srp_iu_arena = vmem_create("VSCSI SRP IU", PAGE_SIZE,
     segs[0].ds_len - PAGE_SIZE, 16, 0, M_BESTFIT | M_NOWAIT);
}
