
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmbus_icmsg_hdr {int ic_flags; } ;
struct vmbus_ic_softc {int ic_dev; } ;
struct vmbus_channel {int dummy; } ;


 int KASSERT (int,char*) ;
 int VMBUS_CHANPKT_TYPE_INBAND ;
 int VMBUS_ICMSG_FLAG_RESP ;
 int VMBUS_ICMSG_FLAG_XACT ;
 int device_printf (int ,char*,int) ;
 int vmbus_chan_send (struct vmbus_channel*,int ,int ,void*,int,int ) ;

int
vmbus_ic_sendresp(struct vmbus_ic_softc *sc, struct vmbus_channel *chan,
    void *data, int dlen, uint64_t xactid)
{
 struct vmbus_icmsg_hdr *hdr;
 int error;

 KASSERT(dlen >= sizeof(*hdr), ("invalid data length %d", dlen));
 hdr = data;

 hdr->ic_flags = VMBUS_ICMSG_FLAG_XACT | VMBUS_ICMSG_FLAG_RESP;
 error = vmbus_chan_send(chan, VMBUS_CHANPKT_TYPE_INBAND, 0,
     data, dlen, xactid);
 if (error)
  device_printf(sc->ic_dev, "resp send failed: %d\n", error);
 return (error);
}
