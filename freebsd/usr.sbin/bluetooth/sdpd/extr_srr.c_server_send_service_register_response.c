
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct iovec {int iov_len; TYPE_3__* iov_base; } ;
typedef TYPE_2__* server_p ;
struct TYPE_8__ {int len; int tid; int pid; } ;
typedef TYPE_3__ sdp_pdu_t ;
typedef TYPE_4__* sdp_pdu_p ;
typedef int pdu ;
typedef int iov ;
typedef size_t int32_t ;
struct TYPE_9__ {int tid; } ;
struct TYPE_7__ {TYPE_1__* fdidx; scalar_t__ req; } ;
struct TYPE_6__ {int rsp_size; int rsp_limit; scalar_t__ rsp_cs; TYPE_3__* rsp; } ;


 scalar_t__ EINTR ;
 int SDP_PDU_ERROR_RESPONSE ;
 int assert (int) ;
 scalar_t__ errno ;
 int htons (int) ;
 size_t writev (size_t,struct iovec const*,int) ;

int32_t
server_send_service_register_response(server_p srv, int32_t fd)
{
 struct iovec iov[2];
 sdp_pdu_t pdu;
 int32_t size;

 assert(srv->fdidx[fd].rsp_size < srv->fdidx[fd].rsp_limit);

 pdu.pid = SDP_PDU_ERROR_RESPONSE;
 pdu.tid = ((sdp_pdu_p)(srv->req))->tid;
 pdu.len = htons(srv->fdidx[fd].rsp_size);

 iov[0].iov_base = &pdu;
 iov[0].iov_len = sizeof(pdu);

 iov[1].iov_base = srv->fdidx[fd].rsp;
 iov[1].iov_len = srv->fdidx[fd].rsp_size;

 do {
  size = writev(fd, (struct iovec const *) &iov, sizeof(iov)/sizeof(iov[0]));
 } while (size < 0 && errno == EINTR);

 srv->fdidx[fd].rsp_cs = 0;
 srv->fdidx[fd].rsp_size = 0;
 srv->fdidx[fd].rsp_limit = 0;

 return ((size < 0)? errno : 0);
}
