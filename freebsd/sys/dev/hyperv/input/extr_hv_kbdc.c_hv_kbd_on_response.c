
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vmbus_xact_ctx {int dummy; } ;
struct vmbus_chanpkt_hdr {int dummy; } ;
struct TYPE_4__ {struct vmbus_xact_ctx* hs_xact_ctx; } ;
typedef TYPE_1__ hv_kbd_sc ;


 int DEBUG_HVSC (TYPE_1__*,char*) ;
 int VMBUS_CHANPKT_CONST_DATA (struct vmbus_chanpkt_hdr*) ;
 int VMBUS_CHANPKT_DATALEN (struct vmbus_chanpkt_hdr*) ;
 int vmbus_xact_ctx_wakeup (struct vmbus_xact_ctx*,int ,int ) ;

__attribute__((used)) static void
hv_kbd_on_response(hv_kbd_sc *sc, struct vmbus_chanpkt_hdr *pkt)
{
 struct vmbus_xact_ctx *xact = sc->hs_xact_ctx;
 if (xact != ((void*)0)) {
  DEBUG_HVSC(sc, "hvkbd is ready\n");
  vmbus_xact_ctx_wakeup(xact, VMBUS_CHANPKT_CONST_DATA(pkt),
      VMBUS_CHANPKT_DATALEN(pkt));
 }
}
