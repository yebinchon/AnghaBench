
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef TYPE_1__* sdp_attr_p ;
typedef int int32_t ;
struct TYPE_3__ {int vlen; scalar_t__ attr; int * value; } ;


 scalar_t__ SDP_ATTR_ADDITIONAL_PROTOCOL_DESCRIPTOR_LISTS ;



 int SDP_DATA_UINT16 ;



 int SDP_GET16 (int,int *) ;
 int SDP_GET32 (int,int *) ;
 int SDP_GET8 (int,int *) ;
 int SDP_UUID_PROTOCOL_L2CAP ;

__attribute__((used)) static int32_t
hid_sdp_parse_protocol_descriptor_list(sdp_attr_p a)
{
 uint8_t *ptr = a->value;
 uint8_t *end = a->value + a->vlen;
 int32_t type, len, uuid, psm;

 if (end - ptr < 15)
  return (-1);

 if (a->attr == SDP_ATTR_ADDITIONAL_PROTOCOL_DESCRIPTOR_LISTS) {
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
 }

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


 if (ptr + 3 > end)
  return (-1);
 SDP_GET8(type, ptr);
 switch (type) {
 case 129:
  SDP_GET16(uuid, ptr);
  if (uuid != SDP_UUID_PROTOCOL_L2CAP)
   return (-1);
  break;

 case 128:
 case 130:
 default:
  return (-1);
 }


 if (ptr + 3 > end)
  return (-1);
 SDP_GET8(type, ptr);
 if (type != SDP_DATA_UINT16)
  return (-1);
 SDP_GET16(psm, ptr);

 return (psm);
}
