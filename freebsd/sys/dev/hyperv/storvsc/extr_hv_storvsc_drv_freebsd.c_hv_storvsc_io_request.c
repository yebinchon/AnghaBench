
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {int lun; scalar_t__ transfer_len; int sense_info_len; scalar_t__ length; } ;
struct TYPE_8__ {TYPE_1__ vm_srb; } ;
struct vstor_packet {TYPE_2__ u; int operation; int flags; } ;
struct vmscsi_req {int dummy; } ;
struct vmbus_channel {int dummy; } ;
struct TYPE_10__ {int * chan_send_cnt; } ;
struct storvsc_softc {int hs_nchan; int hs_num_out_reqs; TYPE_4__ sysctl_data; struct vmbus_channel** hs_sel_chan; } ;
struct TYPE_12__ {scalar_t__ gpa_len; } ;
struct TYPE_9__ {TYPE_6__ gpa_range; } ;
struct hv_storvsc_request {TYPE_5__* softc; int prp_cnt; TYPE_3__ prp_list; struct vstor_packet vstor_packet; } ;
struct TYPE_11__ {int hs_lock; } ;


 int REQUEST_COMPLETION_FLAG ;
 int VMBUS_CHANPKT_FLAG_RC ;
 int VMBUS_CHANPKT_TYPE_INBAND ;
 int VSTOR_OPERATION_EXECUTESRB ;
 int VSTOR_PKT_SIZE ;
 int atomic_add_int (int *,int) ;
 int curcpu ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,struct vstor_packet*,int) ;
 int sense_buffer_size ;
 int vmbus_chan_send (struct vmbus_channel*,int ,int ,struct vstor_packet*,int ,int ) ;
 int vmbus_chan_send_prplist (struct vmbus_channel*,TYPE_6__*,int ,struct vstor_packet*,int ,int ) ;
 scalar_t__ vmscsi_size_delta ;

__attribute__((used)) static int
hv_storvsc_io_request(struct storvsc_softc *sc,
       struct hv_storvsc_request *request)
{
 struct vstor_packet *vstor_packet = &request->vstor_packet;
 struct vmbus_channel* outgoing_channel = ((void*)0);
 int ret = 0, ch_sel;

 vstor_packet->flags |= REQUEST_COMPLETION_FLAG;

 vstor_packet->u.vm_srb.length =
     sizeof(struct vmscsi_req) - vmscsi_size_delta;

 vstor_packet->u.vm_srb.sense_info_len = sense_buffer_size;

 vstor_packet->u.vm_srb.transfer_len =
     request->prp_list.gpa_range.gpa_len;

 vstor_packet->operation = VSTOR_OPERATION_EXECUTESRB;

 ch_sel = (vstor_packet->u.vm_srb.lun + curcpu) % sc->hs_nchan;
 outgoing_channel = sc->hs_sel_chan[ch_sel];

 mtx_unlock(&request->softc->hs_lock);
 if (request->prp_list.gpa_range.gpa_len) {
  ret = vmbus_chan_send_prplist(outgoing_channel,
      &request->prp_list.gpa_range, request->prp_cnt,
      vstor_packet, VSTOR_PKT_SIZE, (uint64_t)(uintptr_t)request);
 } else {
  ret = vmbus_chan_send(outgoing_channel,
      VMBUS_CHANPKT_TYPE_INBAND, VMBUS_CHANPKT_FLAG_RC,
      vstor_packet, VSTOR_PKT_SIZE, (uint64_t)(uintptr_t)request);
 }

 if (!ret) {
  sc->sysctl_data.chan_send_cnt[ch_sel]++;
 }
 mtx_lock(&request->softc->hs_lock);

 if (ret != 0) {
  printf("Unable to send packet %p ret %d", vstor_packet, ret);
 } else {
  atomic_add_int(&sc->hs_num_out_reqs, 1);
 }

 return (ret);
}
