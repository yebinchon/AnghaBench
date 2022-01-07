
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int multi_channels_cnt; } ;
struct vstor_packet {scalar_t__ operation; scalar_t__ status; TYPE_1__ u; int flags; } ;
struct vmbus_channel {int dummy; } ;
struct hv_storvsc_request {int synch_sema; struct vstor_packet vstor_packet; } ;
struct storvsc_softc {int hs_nchan; int hs_chan; struct hv_storvsc_request hs_init_req; } ;


 int MIN (int,scalar_t__) ;
 int REQUEST_COMPLETION_FLAG ;
 int VMBUS_CHANPKT_FLAG_RC ;
 int VMBUS_CHANPKT_TYPE_INBAND ;
 scalar_t__ VSTOR_OPERATION_COMPLETEIO ;
 scalar_t__ VSTOR_OPERATION_CREATE_MULTI_CHANNELS ;
 int VSTOR_PKT_SIZE ;
 scalar_t__ bootverbose ;
 int memset (struct hv_storvsc_request*,int ,int) ;
 scalar_t__ mp_ncpus ;
 int printf (char*,...) ;
 int sema_init (int *,int ,char*) ;
 int sema_wait (int *) ;
 int storvsc_subchan_attach (struct storvsc_softc*,struct vmbus_channel*) ;
 int vmbus_chan_send (int ,int ,int ,struct vstor_packet*,int ,int ) ;
 struct vmbus_channel** vmbus_subchan_get (int ,int) ;
 int vmbus_subchan_rel (struct vmbus_channel**,int) ;

__attribute__((used)) static void
storvsc_send_multichannel_request(struct storvsc_softc *sc, int max_subch)
{
 struct vmbus_channel **subchan;
 struct hv_storvsc_request *request;
 struct vstor_packet *vstor_packet;
 int request_subch;
 int ret, i;


 request_subch = MIN(max_subch, mp_ncpus - 1);

 request = &sc->hs_init_req;


 memset(request, 0, sizeof(struct hv_storvsc_request));

 sema_init(&request->synch_sema, 0, ("stor_synch_sema"));

 vstor_packet = &request->vstor_packet;

 vstor_packet->operation = VSTOR_OPERATION_CREATE_MULTI_CHANNELS;
 vstor_packet->flags = REQUEST_COMPLETION_FLAG;
 vstor_packet->u.multi_channels_cnt = request_subch;

 ret = vmbus_chan_send(sc->hs_chan,
     VMBUS_CHANPKT_TYPE_INBAND, VMBUS_CHANPKT_FLAG_RC,
     vstor_packet, VSTOR_PKT_SIZE, (uint64_t)(uintptr_t)request);

 sema_wait(&request->synch_sema);

 if (vstor_packet->operation != VSTOR_OPERATION_COMPLETEIO ||
     vstor_packet->status != 0) {
  printf("Storvsc_error: create multi-channel invalid operation "
      "(%d) or statue (%u)\n",
      vstor_packet->operation, vstor_packet->status);
  return;
 }


 sc->hs_nchan = request_subch + 1;


 subchan = vmbus_subchan_get(sc->hs_chan, request_subch);


 for (i = 0; i < request_subch; ++i)
  storvsc_subchan_attach(sc, subchan[i]);


 vmbus_subchan_rel(subchan, request_subch);

 if (bootverbose)
  printf("Storvsc create multi-channel success!\n");
}
