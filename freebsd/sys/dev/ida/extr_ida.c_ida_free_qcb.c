
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ida_softc {int free_qcbs; } ;
struct ida_qcb {scalar_t__ error; int * buf; int state; } ;
struct TYPE_2__ {int sle; } ;


 int QCB_FREE ;
 int SLIST_INSERT_HEAD (int *,struct ida_qcb*,int ) ;
 TYPE_1__ link ;

__attribute__((used)) static __inline void
ida_free_qcb(struct ida_softc *ida, struct ida_qcb *qcb)
{

 qcb->state = QCB_FREE;
 qcb->buf = ((void*)0);
 qcb->error = 0;
 SLIST_INSERT_HEAD(&ida->free_qcbs, qcb, link.sle);
}
