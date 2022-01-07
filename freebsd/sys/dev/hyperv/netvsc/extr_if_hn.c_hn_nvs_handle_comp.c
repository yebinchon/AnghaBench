
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_chanpkt_hdr {scalar_t__ cph_xactid; } ;
struct vmbus_channel {int dummy; } ;
struct hn_softc {int dummy; } ;
struct hn_nvs_sendctx {int (* hn_cb ) (struct hn_nvs_sendctx*,struct hn_softc*,struct vmbus_channel*,int ,int ) ;} ;


 int VMBUS_CHANPKT_CONST_DATA (struct vmbus_chanpkt_hdr const*) ;
 int VMBUS_CHANPKT_DATALEN (struct vmbus_chanpkt_hdr const*) ;
 int stub1 (struct hn_nvs_sendctx*,struct hn_softc*,struct vmbus_channel*,int ,int ) ;

__attribute__((used)) static void
hn_nvs_handle_comp(struct hn_softc *sc, struct vmbus_channel *chan,
    const struct vmbus_chanpkt_hdr *pkt)
{
 struct hn_nvs_sendctx *sndc;

 sndc = (struct hn_nvs_sendctx *)(uintptr_t)pkt->cph_xactid;
 sndc->hn_cb(sndc, sc, chan, VMBUS_CHANPKT_CONST_DATA(pkt),
     VMBUS_CHANPKT_DATALEN(pkt));





}
