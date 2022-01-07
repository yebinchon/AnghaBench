
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef TYPE_2__* server_p ;
typedef int sdp_pdu_t ;
typedef TYPE_3__* sdp_pdu_p ;
struct TYPE_13__ {int handle; } ;
typedef TYPE_4__ provider_t ;
struct TYPE_14__ {int dsize; scalar_t__ (* valid ) (int const*,int) ;} ;
typedef TYPE_5__ profile_t ;
typedef size_t int32_t ;
typedef int bdaddr_t ;
typedef int * bdaddr_p ;
struct TYPE_12__ {int len; } ;
struct TYPE_11__ {TYPE_1__* fdidx; int * req; } ;
struct TYPE_10__ {int rsp_size; scalar_t__ rsp_cs; int * rsp; scalar_t__ omtu; scalar_t__ rsp_limit; int priv; int control; } ;


 size_t SDP_ERROR_CODE_INSUFFICIENT_RESOURCES ;
 size_t SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX ;
 int SDP_GET16 (size_t,int const*) ;
 int SDP_PUT16 (int ,int *) ;
 int SDP_PUT32 (int ,int *) ;
 TYPE_5__* profile_get_descriptor (size_t) ;
 TYPE_4__* provider_register (TYPE_5__*,int *,size_t,int const*,int) ;
 scalar_t__ stub1 (int const*,int) ;

int32_t
server_prepare_service_register_response(server_p srv, int32_t fd)
{
 uint8_t const *req = srv->req + sizeof(sdp_pdu_t);
 uint8_t const *req_end = req + ((sdp_pdu_p)(srv->req))->len;
 uint8_t *rsp = srv->fdidx[fd].rsp;

 profile_t *profile = ((void*)0);
 provider_t *provider = ((void*)0);
 bdaddr_t *bdaddr = ((void*)0);
 int32_t uuid;
 if (!srv->fdidx[fd].control ||
     !srv->fdidx[fd].priv || req_end - req < 8)
  return (SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX);


 SDP_GET16(uuid, req);


 bdaddr = (bdaddr_p) req;
 req += sizeof(*bdaddr);


 profile = profile_get_descriptor(uuid);
 if (profile == ((void*)0))
  return (SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX);


 if (req_end - req < profile->dsize ||
     profile->valid == ((void*)0) ||
     (profile->valid)(req, req_end - req) == 0)
  return (SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX);


 provider = provider_register(profile, bdaddr, fd, req, req_end - req);
 if (provider == ((void*)0))
  return (SDP_ERROR_CODE_INSUFFICIENT_RESOURCES);

 SDP_PUT16(0, rsp);
 SDP_PUT32(provider->handle, rsp);


 srv->fdidx[fd].rsp_limit = srv->fdidx[fd].omtu - sizeof(sdp_pdu_t);
 srv->fdidx[fd].rsp_size = rsp - srv->fdidx[fd].rsp;
 srv->fdidx[fd].rsp_cs = 0;

 return (0);
}
