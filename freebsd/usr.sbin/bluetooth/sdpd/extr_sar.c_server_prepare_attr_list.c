
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int provider_p ;
typedef int int32_t ;


 int SDP_DATA_SEQ16 ;


 int SDP_GET16 (int,int const*) ;
 int SDP_GET8 (int,int const*) ;
 int SDP_PUT16 (int,int const*) ;
 int SDP_PUT8 (int ,int const*) ;
 int server_prepare_attr_value_pair (int const,int,int const*,int const* const) ;

int32_t
server_prepare_attr_list(provider_p const provider,
  uint8_t const *req, uint8_t const * const req_end,
  uint8_t *rsp, uint8_t const * const rsp_end)
{
 uint8_t *ptr = rsp + 3;
 int32_t type, hi, lo, len;

 if (ptr > rsp_end)
  return (-1);

 while (req < req_end) {
  SDP_GET8(type, req);

  switch (type) {
  case 129:
   if (req + 2 > req_end)
    return (-1);

   SDP_GET16(lo, req);
   hi = lo;
   break;

  case 128:
   if (req + 4 > req_end)
    return (-1);

   SDP_GET16(lo, req);
   SDP_GET16(hi, req);
   break;

  default:
   return (-1);

  }

  for (; lo <= hi; lo ++) {
   len = server_prepare_attr_value_pair(provider, lo, ptr, rsp_end);
   if (len < 0)
    return (-1);

   ptr += len;
  }
 }

 len = ptr - rsp;


 SDP_PUT8(SDP_DATA_SEQ16, rsp);
 SDP_PUT16(len - 3, rsp);

 return (len);
}
