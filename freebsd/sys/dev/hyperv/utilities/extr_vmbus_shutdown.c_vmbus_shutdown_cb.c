
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmbus_icmsg_shutdown {int ic_haltflags; } ;
struct vmbus_icmsg_hdr {int ic_type; int ic_status; } ;
struct vmbus_ic_softc {int ic_buflen; int ic_dev; void* ic_buf; } ;
struct vmbus_channel {int dummy; } ;


 int ENOBUFS ;
 int KASSERT (int,char*) ;
 int RB_POWEROFF ;
 int VMBUS_ICMSG_SHUTDOWN_SIZE_MIN ;
 int VMBUS_ICMSG_STATUS_FAIL ;
 int VMBUS_ICMSG_STATUS_OK ;


 int VMBUS_SHUTDOWN_FWVER ;
 int VMBUS_SHUTDOWN_MSGVER ;
 int device_printf (int ,char*,...) ;
 int shutdown_nice (int ) ;
 int vmbus_chan_recv (struct vmbus_channel*,void*,int*,int *) ;
 int vmbus_ic_negomsg (struct vmbus_ic_softc*,void*,int*,int ,int ) ;
 int vmbus_ic_sendresp (struct vmbus_ic_softc*,struct vmbus_channel*,void*,int,int ) ;

__attribute__((used)) static void
vmbus_shutdown_cb(struct vmbus_channel *chan, void *xsc)
{
 struct vmbus_ic_softc *sc = xsc;
 struct vmbus_icmsg_hdr *hdr;
 struct vmbus_icmsg_shutdown *msg;
 int dlen, error, do_shutdown = 0;
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
      VMBUS_SHUTDOWN_FWVER, VMBUS_SHUTDOWN_MSGVER);
  if (error)
   return;
  break;

 case 128:
  if (dlen < VMBUS_ICMSG_SHUTDOWN_SIZE_MIN) {
   device_printf(sc->ic_dev, "invalid shutdown len %d\n",
       dlen);
   return;
  }
  msg = data;


  if (msg->ic_haltflags == 0 || msg->ic_haltflags == 1) {
   device_printf(sc->ic_dev, "shutdown requested\n");
   hdr->ic_status = VMBUS_ICMSG_STATUS_OK;
   do_shutdown = 1;
  } else {
   device_printf(sc->ic_dev, "unknown shutdown flags "
       "0x%08x\n", msg->ic_haltflags);
   hdr->ic_status = VMBUS_ICMSG_STATUS_FAIL;
  }
  break;

 default:
  device_printf(sc->ic_dev, "got 0x%08x icmsg\n", hdr->ic_type);
  break;
 }




 vmbus_ic_sendresp(sc, chan, data, dlen, xactid);

 if (do_shutdown)
  shutdown_nice(RB_POWEROFF);
}
