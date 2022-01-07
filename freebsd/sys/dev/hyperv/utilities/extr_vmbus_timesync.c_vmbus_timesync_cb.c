
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmbus_icmsg_timesync4 {int ic_tsflags; int ic_sent_tc; int ic_hvtime; } ;
struct vmbus_icmsg_timesync {int ic_tsflags; int ic_hvtime; } ;
struct vmbus_icmsg_hdr {int ic_type; } ;
struct vmbus_ic_softc {int ic_buflen; int ic_dev; void* ic_buf; } ;
struct vmbus_channel {int dummy; } ;


 int ENOBUFS ;
 int KASSERT (int,char*) ;


 int VMBUS_TIMESYNC_DORTT (struct vmbus_ic_softc*) ;
 int VMBUS_TIMESYNC_FWVER ;
 int VMBUS_TIMESYNC_MSGVER ;
 int VMBUS_TIMESYNC_MSGVER4 (struct vmbus_ic_softc*) ;
 int device_printf (int ,char*,...) ;
 int vmbus_chan_recv (struct vmbus_channel*,void*,int*,int *) ;
 int vmbus_ic_negomsg (struct vmbus_ic_softc*,void*,int*,int ,int ) ;
 int vmbus_ic_sendresp (struct vmbus_ic_softc*,struct vmbus_channel*,void*,int,int ) ;
 int vmbus_timesync (struct vmbus_ic_softc*,int ,int ,int ) ;

__attribute__((used)) static void
vmbus_timesync_cb(struct vmbus_channel *chan, void *xsc)
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
 case 129:
  error = vmbus_ic_negomsg(sc, data, &dlen,
      VMBUS_TIMESYNC_FWVER, VMBUS_TIMESYNC_MSGVER);
  if (error)
   return;
  if (VMBUS_TIMESYNC_DORTT(sc))
   device_printf(sc->ic_dev, "RTT\n");
  break;

 case 128:
  if (VMBUS_TIMESYNC_MSGVER4(sc)) {
   const struct vmbus_icmsg_timesync4 *msg4;

   if (dlen < sizeof(*msg4)) {
    device_printf(sc->ic_dev, "invalid timesync4 "
        "len %d\n", dlen);
    return;
   }
   msg4 = data;
   vmbus_timesync(sc, msg4->ic_hvtime, msg4->ic_sent_tc,
       msg4->ic_tsflags);
  } else {
   const struct vmbus_icmsg_timesync *msg;

   if (dlen < sizeof(*msg)) {
    device_printf(sc->ic_dev, "invalid timesync "
        "len %d\n", dlen);
    return;
   }
   msg = data;
   vmbus_timesync(sc, msg->ic_hvtime, 0, msg->ic_tsflags);
  }
  break;

 default:
  device_printf(sc->ic_dev, "got 0x%08x icmsg\n", hdr->ic_type);
  break;
 }




 vmbus_ic_sendresp(sc, chan, data, dlen, xactid);
}
