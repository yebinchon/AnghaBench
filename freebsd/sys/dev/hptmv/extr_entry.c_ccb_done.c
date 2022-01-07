
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int status; } ;
union ccb {TYPE_1__ ccb_h; int ccb_adapter; } ;
struct TYPE_9__ {scalar_t__ outstandingCommands; } ;
struct TYPE_8__ {TYPE_3__* pAdapter; } ;
typedef TYPE_2__* PBUS_DMAMAP ;
typedef TYPE_3__ IAL_ADAPTER_T ;


 int Check_Idle_Call (TYPE_3__*) ;
 scalar_t__ DPC_Request_Nums ;
 int KdPrintI (char*) ;
 int dmamap_put (TYPE_2__*) ;
 int wakeup (TYPE_3__*) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
ccb_done(union ccb *ccb)
{
 PBUS_DMAMAP pmap = (PBUS_DMAMAP)ccb->ccb_adapter;
 IAL_ADAPTER_T * pAdapter = pmap->pAdapter;
 KdPrintI(("ccb_done: ccb %p status %x\n", ccb, ccb->ccb_h.status));

 dmamap_put(pmap);
 xpt_done(ccb);

 pAdapter->outstandingCommands--;

 if (pAdapter->outstandingCommands == 0)
 {
  if(DPC_Request_Nums == 0)
   Check_Idle_Call(pAdapter);
  wakeup(pAdapter);
 }
}
