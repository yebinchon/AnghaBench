
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmbus_icmsg_heartbeat {int ic_seq; } ;
struct vmbus_icmsg_hdr {int ic_type; } ;
struct vmbus_ic_softc {int ic_buflen; int ic_dev; void* ic_buf; } ;
struct vmbus_channel {int dummy; } ;


 int ENOBUFS ;
 int KASSERT (int,char*) ;
 int VMBUS_HEARTBEAT_FWVER ;
 int VMBUS_HEARTBEAT_MSGVER ;
 int VMBUS_ICMSG_HEARTBEAT_SIZE_MIN ;


 int device_printf (int ,char*,int) ;
 int vmbus_chan_recv (struct vmbus_channel*,void*,int*,int *) ;
 int vmbus_ic_negomsg (struct vmbus_ic_softc*,void*,int*,int ,int ) ;
 int vmbus_ic_sendresp (struct vmbus_ic_softc*,struct vmbus_channel*,void*,int,int ) ;

__attribute__((used)) static void
vmbus_heartbeat_cb(struct vmbus_channel *chan, void *xsc)
{
 struct vmbus_ic_softc *sc = xsc;
 struct vmbus_icmsg_hdr *hdr;
 int dlen, error;
 uint64_t xactid;
 void *data;




 data = sc->ic_buf;
 dlen = sc->ic_buflen;
 error = vmbus_chan_recv(chan, data, &dlen, &xactid);
 KASSERT(error != ENOBUFS, ("icbuf is not large enough"));
 if (error)
  return;

 if (dlen < sizeof(*hdr)) {
  device_printf(sc->ic_dev, "invalid data len %d\n", dlen);
  return;
 }
 hdr = data;




 switch (hdr->ic_type) {
 case 128:
  error = vmbus_ic_negomsg(sc, data, &dlen,
      VMBUS_HEARTBEAT_FWVER, VMBUS_HEARTBEAT_MSGVER);
  if (error)
   return;
  break;

 case 129:

  if (dlen < VMBUS_ICMSG_HEARTBEAT_SIZE_MIN) {
   device_printf(sc->ic_dev, "invalid heartbeat len %d\n",
       dlen);
   return;
  }
  ((struct vmbus_icmsg_heartbeat *)data)->ic_seq++;
  break;

 default:
  device_printf(sc->ic_dev, "got 0x%08x icmsg\n", hdr->ic_type);
  break;
 }




 vmbus_ic_sendresp(sc, chan, data, dlen, xactid);
}
