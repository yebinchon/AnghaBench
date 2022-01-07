
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct hv_vmbus_pipe_hdr {int dummy; } ;
struct hv_vmbus_icmsg_hdr {int dummy; } ;
struct hv_kvp_msg {int dummy; } ;
struct TYPE_3__ {int req_in_progress; struct hv_kvp_msg* host_kvp_msg; int * rcv_buf; int host_msg_id; int host_msg_len; } ;
typedef TYPE_1__ hv_kvp_sc ;



__attribute__((used)) static void
hv_kvp_transaction_init(hv_kvp_sc *sc, uint32_t rcv_len,
   uint64_t request_id, uint8_t *rcv_buf)
{



 sc->req_in_progress = 1;
 sc->host_msg_len = rcv_len;
 sc->host_msg_id = request_id;
 sc->rcv_buf = rcv_buf;
 sc->host_kvp_msg = (struct hv_kvp_msg *)&rcv_buf[
     sizeof(struct hv_vmbus_pipe_hdr) +
     sizeof(struct hv_vmbus_icmsg_hdr)];
}
