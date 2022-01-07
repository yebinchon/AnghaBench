
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int const uint8_t ;
typedef size_t uint32_t ;
typedef TYPE_2__* server_p ;
typedef int sdp_pdu_t ;
typedef TYPE_3__* sdp_pdu_p ;
typedef int provider_t ;
typedef size_t int32_t ;
struct TYPE_7__ {int len; } ;
struct TYPE_6__ {TYPE_1__* fdidx; int const* req; } ;
struct TYPE_5__ {size_t rsp_cs; scalar_t__ rsp_size; int rsp_limit; int omtu; int const* rsp; } ;


 int NG_L2CAP_MTU_MAXIMUM ;



 size_t SDP_ERROR_CODE_INSUFFICIENT_RESOURCES ;
 size_t SDP_ERROR_CODE_INVALID_CONTINUATION_STATE ;
 size_t SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX ;
 size_t SDP_ERROR_CODE_INVALID_SERVICE_RECORD_HANDLE ;
 int SDP_GET16 (size_t,int const*) ;
 int SDP_GET32 (size_t,int const*) ;
 int SDP_GET8 (size_t,int const*) ;
 int * provider_by_handle (size_t) ;
 size_t server_prepare_attr_list (int *,int const*,int const*,int const*,int const*) ;

int32_t
server_prepare_service_attribute_response(server_p srv, int32_t fd)
{
 uint8_t const *req = srv->req + sizeof(sdp_pdu_t);
 uint8_t const *req_end = req + ((sdp_pdu_p)(srv->req))->len;
 uint8_t *rsp = srv->fdidx[fd].rsp;
 uint8_t const *rsp_end = rsp + NG_L2CAP_MTU_MAXIMUM;

 uint8_t *ptr = ((void*)0);
 provider_t *provider = ((void*)0);
 uint32_t handle;
 int32_t type, rsp_limit, aidlen, cslen, cs;
 if (req_end - req < 12)
  return (SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX);


 SDP_GET32(handle, req);
 SDP_GET16(rsp_limit, req);
 if (rsp_limit <= 0)
  return (SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX);


 aidlen = 0;
 SDP_GET8(type, req);
 switch (type) {
 case 128:
  SDP_GET8(aidlen, req);
  break;

 case 130:
  SDP_GET16(aidlen, req);
  break;

 case 129:
  SDP_GET32(aidlen, req);
   break;
 }
 if (aidlen <= 0)
  return (SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX);

 ptr = (uint8_t *) req + aidlen;


 if (ptr + 1 > req_end)
  return (SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX);

 SDP_GET8(cslen, ptr);
 if (cslen != 0) {
  if (cslen != 2 || req_end - ptr != 2)
   return (SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX);

  SDP_GET16(cs, ptr);
 } else
  cs = 0;


 if (srv->fdidx[fd].rsp_cs != cs)
  return (SDP_ERROR_CODE_INVALID_CONTINUATION_STATE);
 if (srv->fdidx[fd].rsp_size > 0)
  return (0);


 if ((provider = provider_by_handle(handle)) == ((void*)0))
  return (SDP_ERROR_CODE_INVALID_SERVICE_RECORD_HANDLE);
 cs = server_prepare_attr_list(provider, req, req+aidlen, rsp, rsp_end);
 if (cs < 0)
  return (SDP_ERROR_CODE_INSUFFICIENT_RESOURCES);


 srv->fdidx[fd].rsp_limit = srv->fdidx[fd].omtu - sizeof(sdp_pdu_t) - 2;
 if (srv->fdidx[fd].rsp_limit > rsp_limit)
  srv->fdidx[fd].rsp_limit = rsp_limit;

 srv->fdidx[fd].rsp_size = cs;
 srv->fdidx[fd].rsp_cs = 0;

 return (0);
}
