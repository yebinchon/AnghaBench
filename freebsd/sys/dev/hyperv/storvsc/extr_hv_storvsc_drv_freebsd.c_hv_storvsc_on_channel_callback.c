
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct vstor_packet {int operation; } ;
struct vmbus_channel {int dummy; } ;
struct hv_storvsc_request {int synch_sema; int vstor_packet; } ;
struct storvsc_softc {struct hv_storvsc_request hs_reset_req; struct hv_storvsc_request hs_init_req; } ;


 int ENOBUFS ;
 int KASSERT (int,char*) ;



 int VSTOR_PKT_SIZE ;
 int hv_storvsc_on_iocompletion (struct storvsc_softc*,struct vstor_packet*,struct hv_storvsc_request*) ;
 int hv_storvsc_rescan_target (struct storvsc_softc*) ;
 int memcpy (int *,int *,int) ;
 int panic (char*) ;
 int printf (char*,int) ;
 int roundup2 (int,int) ;
 int sema_post (int *) ;
 int vmbus_chan_recv (struct vmbus_channel*,int *,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static void
hv_storvsc_on_channel_callback(struct vmbus_channel *channel, void *xsc)
{
 int ret = 0;
 struct storvsc_softc *sc = xsc;
 uint32_t bytes_recvd;
 uint64_t request_id;
 uint8_t packet[roundup2(sizeof(struct vstor_packet), 8)];
 struct hv_storvsc_request *request;
 struct vstor_packet *vstor_packet;

 bytes_recvd = roundup2(VSTOR_PKT_SIZE, 8);
 ret = vmbus_chan_recv(channel, packet, &bytes_recvd, &request_id);
 KASSERT(ret != ENOBUFS, ("storvsc recvbuf is not large enough"));


 while ((ret == 0) && (bytes_recvd > 0)) {
  request = (struct hv_storvsc_request *)(uintptr_t)request_id;

  if ((request == &sc->hs_init_req) ||
   (request == &sc->hs_reset_req)) {
   memcpy(&request->vstor_packet, packet,
       sizeof(struct vstor_packet));
   sema_post(&request->synch_sema);
  } else {
   vstor_packet = (struct vstor_packet *)packet;
   switch(vstor_packet->operation) {
   case 130:
    if (request == ((void*)0))
     panic("VMBUS: storvsc received a "
         "packet with NULL request id in "
         "COMPLETEIO operation.");

    hv_storvsc_on_iocompletion(sc,
       vstor_packet, request);
    break;
   case 128:
    printf("VMBUS: storvsc operation %d not "
        "implemented.\n", vstor_packet->operation);

    break;
   case 129:
    hv_storvsc_rescan_target(sc);
    break;
   default:
    break;
   }
  }

  bytes_recvd = roundup2(VSTOR_PKT_SIZE, 8),
  ret = vmbus_chan_recv(channel, packet, &bytes_recvd,
      &request_id);
  KASSERT(ret != ENOBUFS,
      ("storvsc recvbuf is not large enough"));




 }
}
