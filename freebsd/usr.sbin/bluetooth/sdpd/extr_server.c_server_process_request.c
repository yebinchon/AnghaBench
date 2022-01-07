
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef TYPE_2__* server_p ;
typedef TYPE_3__* sdp_pdu_p ;
typedef size_t int32_t ;
struct TYPE_20__ {int pid; scalar_t__ tid; scalar_t__ len; } ;
struct TYPE_19__ {scalar_t__ imtu; TYPE_1__* fdidx; int * req; int fdset; } ;
struct TYPE_18__ {int valid; scalar_t__ omtu; scalar_t__ rsp_limit; scalar_t__ rsp_size; scalar_t__ rsp_cs; scalar_t__ control; int * rsp; int server; } ;


 scalar_t__ EINTR ;
 int FD_ISSET (size_t,int *) ;
 scalar_t__ NG_L2CAP_MTU_MINIMUM ;
 size_t SDP_ERROR_CODE_INVALID_PDU_SIZE ;
 size_t SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX ;






 int assert (int) ;
 scalar_t__ errno ;
 int log_err (char*,char*,int,scalar_t__,...) ;
 int log_info (char*,char*) ;
 scalar_t__ ntohs (scalar_t__) ;
 size_t read (size_t,int *,scalar_t__) ;
 size_t server_prepare_service_attribute_response (TYPE_2__*,size_t) ;
 size_t server_prepare_service_change_response (TYPE_2__*,size_t) ;
 size_t server_prepare_service_register_response (TYPE_2__*,size_t) ;
 size_t server_prepare_service_search_attribute_response (TYPE_2__*,size_t) ;
 size_t server_prepare_service_search_response (TYPE_2__*,size_t) ;
 size_t server_prepare_service_unregister_response (TYPE_2__*,size_t) ;
 size_t server_send_error_response (TYPE_2__*,size_t,size_t) ;
 size_t server_send_service_attribute_response (TYPE_2__*,size_t) ;
 size_t server_send_service_change_response (TYPE_2__*,size_t) ;
 size_t server_send_service_register_response (TYPE_2__*,size_t) ;
 size_t server_send_service_search_attribute_response (TYPE_2__*,size_t) ;
 size_t server_send_service_search_response (TYPE_2__*,size_t) ;
 size_t server_send_service_unregister_response (TYPE_2__*,size_t) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static int32_t
server_process_request(server_p srv, int32_t fd)
{
 sdp_pdu_p pdu = (sdp_pdu_p) srv->req;
 int32_t len, error;

 assert(srv->imtu > 0);
 assert(srv->req != ((void*)0));
 assert(FD_ISSET(fd, &srv->fdset));
 assert(srv->fdidx[fd].valid);
 assert(!srv->fdidx[fd].server);
 assert(srv->fdidx[fd].rsp != ((void*)0));
 assert(srv->fdidx[fd].omtu >= NG_L2CAP_MTU_MINIMUM);

 do {
  len = read(fd, srv->req, srv->imtu);
 } while (len < 0 && errno == EINTR);

 if (len < 0) {
  log_err("Could not receive SDP request from %s socket. %s (%d)",
   srv->fdidx[fd].control? "control" : "L2CAP",
   strerror(errno), errno);
  return (-1);
 }
 if (len == 0) {
  log_info("Client on %s socket has disconnected",
   srv->fdidx[fd].control? "control" : "L2CAP");
  return (-1);
 }

 if (len >= sizeof(*pdu) &&
     sizeof(*pdu) + (pdu->len = ntohs(pdu->len)) == len) {
  switch (pdu->pid) {
  case 129:
   error = server_prepare_service_search_response(srv, fd);
   break;

  case 133:
   error = server_prepare_service_attribute_response(srv, fd);
   break;

  case 130:
   error = server_prepare_service_search_attribute_response(srv, fd);
   break;

  case 131:
   error = server_prepare_service_register_response(srv, fd);
   break;

  case 128:
   error = server_prepare_service_unregister_response(srv, fd);
   break;

  case 132:
   error = server_prepare_service_change_response(srv, fd);
   break;

  default:
   error = SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX;
   break;
  }
 } else
  error = SDP_ERROR_CODE_INVALID_PDU_SIZE;

 if (error == 0) {
  switch (pdu->pid) {
  case 129:
   error = server_send_service_search_response(srv, fd);
   break;

  case 133:
   error = server_send_service_attribute_response(srv, fd);
   break;

  case 130:
   error = server_send_service_search_attribute_response(srv, fd);
   break;

  case 131:
   error = server_send_service_register_response(srv, fd);
   break;

  case 128:
   error = server_send_service_unregister_response(srv, fd);
   break;

  case 132:
   error = server_send_service_change_response(srv, fd);
   break;

  default:
   error = SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX;
   break;
  }

  if (error != 0)
   log_err("Could not send SDP response to %s socket, " "pdu->pid=%d, pdu->tid=%d, error=%d",

    srv->fdidx[fd].control? "control" : "L2CAP",
    pdu->pid, ntohs(pdu->tid), error);
 } else {
  log_err("Could not process SDP request from %s socket, " "pdu->pid=%d, pdu->tid=%d, pdu->len=%d, len=%d, " "error=%d",


   srv->fdidx[fd].control? "control" : "L2CAP",
   pdu->pid, ntohs(pdu->tid), pdu->len, len, error);

  error = server_send_error_response(srv, fd, error);
  if (error != 0)
   log_err("Could not send SDP error response to %s " "socket, pdu->pid=%d, pdu->tid=%d, error=%d",

    srv->fdidx[fd].control? "control" : "L2CAP",
    pdu->pid, ntohs(pdu->tid), error);
 }


 if (error != 0) {
  srv->fdidx[fd].rsp_cs = 0;
  srv->fdidx[fd].rsp_size = 0;
  srv->fdidx[fd].rsp_limit = 0;
 }

 return (error);
}
