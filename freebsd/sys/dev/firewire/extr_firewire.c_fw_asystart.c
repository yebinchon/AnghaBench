
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_xfer {TYPE_1__* q; int * mbuf; int flag; struct firewire_comm* fc; } ;
struct firewire_comm {int dummy; } ;
struct TYPE_2__ {int (* start ) (struct firewire_comm*) ;int queued; int q; } ;


 int FWXF_INQ ;
 int FW_GLOCK (struct firewire_comm*) ;
 int FW_GUNLOCK (struct firewire_comm*) ;
 int STAILQ_INSERT_TAIL (int *,struct fw_xfer*,int ) ;
 int link ;
 int stub1 (struct firewire_comm*) ;

__attribute__((used)) static void
fw_asystart(struct fw_xfer *xfer)
{
 struct firewire_comm *fc = xfer->fc;


 FW_GLOCK(fc);
 xfer->flag = FWXF_INQ;
 STAILQ_INSERT_TAIL(&xfer->q->q, xfer, link);



 FW_GUNLOCK(fc);

 if (xfer->mbuf == ((void*)0))
  xfer->q->start(fc);
 return;
}
