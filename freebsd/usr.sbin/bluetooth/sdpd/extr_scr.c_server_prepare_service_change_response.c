
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef TYPE_3__* server_p ;
typedef int sdp_pdu_t ;
typedef TYPE_4__* sdp_pdu_p ;
struct TYPE_13__ {size_t fd; TYPE_1__* profile; } ;
typedef TYPE_5__ provider_t ;
typedef size_t int32_t ;
struct TYPE_12__ {int len; } ;
struct TYPE_11__ {TYPE_2__* fdidx; int * req; } ;
struct TYPE_10__ {int rsp_size; scalar_t__ rsp_cs; int * rsp; scalar_t__ omtu; scalar_t__ rsp_limit; int priv; int control; } ;
struct TYPE_9__ {int dsize; scalar_t__ (* valid ) (int const*,int) ;} ;


 size_t SDP_ERROR_CODE_INSUFFICIENT_RESOURCES ;
 size_t SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX ;
 size_t SDP_ERROR_CODE_INVALID_SERVICE_RECORD_HANDLE ;
 int SDP_GET32 (int ,int const*) ;
 int SDP_PUT16 (int ,int *) ;
 TYPE_5__* provider_by_handle (int ) ;
 scalar_t__ provider_update (TYPE_5__*,int const*,int) ;
 scalar_t__ stub1 (int const*,int) ;

int32_t
server_prepare_service_change_response(server_p srv, int32_t fd)
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


 if (req_end - req < provider->profile->dsize ||
     provider->profile->valid == ((void*)0) ||
     (provider->profile->valid)(req, req_end - req) == 0)
  return (SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX);


 if (provider_update(provider, req, req_end - req) < 0)
  return (SDP_ERROR_CODE_INSUFFICIENT_RESOURCES);

 SDP_PUT16(0, rsp);


 srv->fdidx[fd].rsp_limit = srv->fdidx[fd].omtu - sizeof(sdp_pdu_t);
 srv->fdidx[fd].rsp_size = rsp - srv->fdidx[fd].rsp;
 srv->fdidx[fd].rsp_cs = 0;

 return (0);
}
