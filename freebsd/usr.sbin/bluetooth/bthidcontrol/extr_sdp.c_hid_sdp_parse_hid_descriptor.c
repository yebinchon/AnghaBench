
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef TYPE_1__* sdp_attr_p ;
typedef int int32_t ;
struct TYPE_3__ {int vlen; int * value; } ;
 int SDP_DATA_UINT8 ;
 int SDP_GET16 (int,int *) ;
 int SDP_GET32 (int,int *) ;
 int SDP_GET8 (int,int *) ;
 int UDESC_REPORT ;

__attribute__((used)) static int32_t
hid_sdp_parse_hid_descriptor(sdp_attr_p a)
{
 uint8_t *ptr = a->value;
 uint8_t *end = a->value + a->vlen;
 int32_t type, len, descriptor_type;

 if (end - ptr < 9)
  return (-1);

 SDP_GET8(type, ptr);
 switch (type) {
 case 131:
  SDP_GET8(len, ptr);
  break;

 case 133:
  SDP_GET16(len, ptr);
  break;

 case 132:
  SDP_GET32(len, ptr);
  break;

 default:
  return (-1);
 }
 if (ptr + len > end)
  return (-1);

 while (ptr < end) {

  SDP_GET8(type, ptr);
  switch (type) {
  case 131:
   if (ptr + 1 > end)
    return (-1);
   SDP_GET8(len, ptr);
   break;

  case 133:
   if (ptr + 2 > end)
    return (-1);
   SDP_GET16(len, ptr);
   break;

  case 132:
   if (ptr + 4 > end)
    return (-1);
   SDP_GET32(len, ptr);
   break;

  default:
   return (-1);
  }


  if (ptr + 1 > end)
   return (-1);
  SDP_GET8(type, ptr);
  if (type != SDP_DATA_UINT8 || ptr + 1 > end)
   return (-1);
  SDP_GET8(descriptor_type, ptr);


  if (ptr + 1 > end)
   return (-1);
  SDP_GET8(type, ptr);
  switch (type) {
  case 128:
   if (ptr + 1 > end)
    return (-1);
   SDP_GET8(len, ptr);
   break;

  case 130:
   if (ptr + 2 > end)
    return (-1);
   SDP_GET16(len, ptr);
   break;

  case 129:
   if (ptr + 4 > end)
    return (-1);
   SDP_GET32(len, ptr);
   break;

  default:
   return (-1);
  }
  if (ptr + len > end)
   return (-1);

  if (descriptor_type == UDESC_REPORT && len > 0) {
   a->value = ptr;
   a->vlen = len;

   return (0);
  }

  ptr += len;
 }

 return (-1);
}
