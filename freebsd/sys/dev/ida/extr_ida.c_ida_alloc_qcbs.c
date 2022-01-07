
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ida_softc {int free_qcbs; TYPE_2__* hwqcbs; int buffer_dmat; struct ida_qcb* qcbs; } ;
struct ida_qcb {TYPE_2__* hwqcb; int hwqcb_busaddr; int flags; struct ida_softc* ida; int dmamap; } ;
struct TYPE_4__ {struct ida_qcb* qcb; } ;
struct TYPE_3__ {int sle; } ;


 int IDA_QCB_MAX ;
 int QCB_FREE ;
 int SLIST_INSERT_HEAD (int *,struct ida_qcb*,int ) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int idahwqcbvtop (struct ida_softc*,TYPE_2__*) ;
 TYPE_1__ link ;

__attribute__((used)) static int
ida_alloc_qcbs(struct ida_softc *ida)
{
 struct ida_qcb *qcb;
 int error, i;

 for (i = 0; i < IDA_QCB_MAX; i++) {
  qcb = &ida->qcbs[i];

  error = bus_dmamap_create(ida->buffer_dmat, 0, &qcb->dmamap);
  if (error != 0)
   return (error);

  qcb->ida = ida;
  qcb->flags = QCB_FREE;
  qcb->hwqcb = &ida->hwqcbs[i];
  qcb->hwqcb->qcb = qcb;
  qcb->hwqcb_busaddr = idahwqcbvtop(ida, qcb->hwqcb);
  SLIST_INSERT_HEAD(&ida->free_qcbs, qcb, link.sle);
 }
 return (0);
}
