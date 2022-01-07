
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_xfer {int flag; scalar_t__ resp; int * fc; TYPE_1__* q; } ;
struct TYPE_2__ {int queued; int q; } ;


 int FWXF_INIT ;
 int FWXF_INQ ;
 int FWXF_START ;
 int FW_GLOCK (int *) ;
 int FW_GUNLOCK (int *) ;
 int STAILQ_REMOVE (int *,struct fw_xfer*,int ,int ) ;
 int fw_tl_free (int *,struct fw_xfer*) ;
 int fw_xfer ;
 int link ;
 int printf (char*) ;

void
fw_xfer_unload(struct fw_xfer *xfer)
{

 if (xfer == ((void*)0))
  return;

 if (xfer->fc != ((void*)0)) {
  FW_GLOCK(xfer->fc);
  if (xfer->flag & FWXF_INQ) {
   STAILQ_REMOVE(&xfer->q->q, xfer, fw_xfer, link);
   xfer->flag &= ~FWXF_INQ;



  }
  FW_GUNLOCK(xfer->fc);





  fw_tl_free(xfer->fc, xfer);

  if (xfer->flag & FWXF_START)





   printf("fw_xfer_free FWXF_START\n");

 }
 xfer->flag = FWXF_INIT;
 xfer->resp = 0;
}
