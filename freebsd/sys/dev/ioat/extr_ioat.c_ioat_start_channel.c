
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uintmax_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct ioat_softc {int dmaengine; int head; } ;
struct TYPE_6__ {int null; } ;
struct TYPE_5__ {int completion_update; int op; } ;
struct TYPE_7__ {TYPE_2__ control; TYPE_1__ control_generic; scalar_t__ control_raw; } ;
struct ioat_dma_hw_descriptor {int size; TYPE_3__ u; scalar_t__ dest_addr; scalar_t__ src_addr; } ;
struct bus_dmadesc {int * callback_arg; int * callback_fn; } ;
struct ioat_descriptor {struct bus_dmadesc bus_dmadesc; } ;
struct TYPE_8__ {struct ioat_dma_hw_descriptor dma; } ;


 int DELAY (int) ;
 int ENXIO ;
 int IOAT_CHANERR_OFFSET ;
 int IOAT_CHANERR_STR ;
 int IOAT_OP_COPY ;
 int ioat_acquire (int *) ;
 scalar_t__ ioat_get_chansts (struct ioat_softc*) ;
 TYPE_4__* ioat_get_descriptor (struct ioat_softc*,int ) ;
 struct ioat_descriptor* ioat_get_ring_entry (struct ioat_softc*,int ) ;
 int ioat_log_message (int ,char*,int ,int,int ) ;
 scalar_t__ ioat_read_4 (struct ioat_softc*,int ) ;
 int ioat_release (int *) ;
 int ioat_submit_single (struct ioat_softc*) ;
 scalar_t__ is_ioat_idle (scalar_t__) ;

__attribute__((used)) static int
ioat_start_channel(struct ioat_softc *ioat)
{
 struct ioat_dma_hw_descriptor *hw_desc;
 struct ioat_descriptor *desc;
 struct bus_dmadesc *dmadesc;
 uint64_t status;
 uint32_t chanerr;
 int i;

 ioat_acquire(&ioat->dmaengine);


 desc = ioat_get_ring_entry(ioat, ioat->head);
 hw_desc = &ioat_get_descriptor(ioat, ioat->head)->dma;
 dmadesc = &desc->bus_dmadesc;

 dmadesc->callback_fn = ((void*)0);
 dmadesc->callback_arg = ((void*)0);

 hw_desc->u.control_raw = 0;
 hw_desc->u.control_generic.op = IOAT_OP_COPY;
 hw_desc->u.control_generic.completion_update = 1;
 hw_desc->size = 8;
 hw_desc->src_addr = 0;
 hw_desc->dest_addr = 0;
 hw_desc->u.control.null = 1;

 ioat_submit_single(ioat);
 ioat_release(&ioat->dmaengine);

 for (i = 0; i < 100; i++) {
  DELAY(1);
  status = ioat_get_chansts(ioat);
  if (is_ioat_idle(status))
   return (0);
 }

 chanerr = ioat_read_4(ioat, IOAT_CHANERR_OFFSET);
 ioat_log_message(0, "could not start channel: "
     "status = %#jx error = %b\n", (uintmax_t)status, (int)chanerr,
     IOAT_CHANERR_STR);
 return (ENXIO);
}
