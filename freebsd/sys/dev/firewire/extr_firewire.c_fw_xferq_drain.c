
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_xferq {int queued; int q; } ;
struct fw_xfer {int flag; int resp; } ;


 int EAGAIN ;
 int FWXF_SENTERR ;
 struct fw_xfer* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int fw_xfer_done (struct fw_xfer*) ;
 int link ;

__attribute__((used)) static void
fw_xferq_drain(struct fw_xferq *xferq)
{
 struct fw_xfer *xfer;

 while ((xfer = STAILQ_FIRST(&xferq->q)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&xferq->q, link);



  xfer->resp = EAGAIN;
  xfer->flag = FWXF_SENTERR;
  fw_xfer_done(xfer);
 }
}
