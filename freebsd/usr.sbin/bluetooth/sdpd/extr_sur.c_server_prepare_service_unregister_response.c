
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef TYPE_2__* server_p ;
typedef int sdp_pdu_t ;
typedef TYPE_3__* sdp_pdu_p ;
struct TYPE_11__ {size_t fd; } ;
typedef TYPE_4__ provider_t ;
typedef size_t int32_t ;
struct TYPE_10__ {int len; } ;
struct TYPE_9__ {TYPE_1__* fdidx; int * req; } ;
struct TYPE_8__ {int rsp_size; scalar_t__ rsp_cs; int * rsp; scalar_t__ omtu; scalar_t__ rsp_limit; int priv; int control; } ;


 size_t SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX ;
 size_t SDP_ERROR_CODE_INVALID_SERVICE_RECORD_HANDLE ;
 int SDP_GET32 (int ,int const*) ;
 int SDP_PUT16 (int ,int *) ;
 TYPE_4__* provider_by_handle (int ) ;
 int provider_unregister (TYPE_4__*) ;

int32_t
server_prepare_service_unregister_response(server_p srv, int32_t fd)
{
 uint8_t const *req = srv->req + sizeof(sdp_pdu_t);
 uint8_t const *req_end = req + ((sdp_pdu_p)(srv->req))->len;
 uint8_t *rsp = srv->fdidx[fd].rsp;

 provider_t *provider = ((void*)0);
 uint32_t handle;







 if (!srv->fdidx[fd].control ||
     !srv->fdidx[fd].priv || req_end - req < 4)
  return (SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX);


 SDP_GET32(handle, req);


 provider = provider_by_handle(handle);
 if (provider == ((void*)0) || provider->fd != fd)
  return (SDP_ERROR_CODE_INVALID_SERVICE_RECORD_HANDLE);

 provider_unregister(provider);
 SDP_PUT16(0, rsp);


 srv->fdidx[fd].rsp_limit = srv->fdidx[fd].omtu - sizeof(sdp_pdu_t);
 srv->fdidx[fd].rsp_size = rsp - srv->fdidx[fd].rsp;
 srv->fdidx[fd].rsp_cs = 0;

 return (0);
}
