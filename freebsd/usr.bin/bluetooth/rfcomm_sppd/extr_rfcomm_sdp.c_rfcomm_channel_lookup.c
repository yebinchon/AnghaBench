
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int member_2; scalar_t__ flags; scalar_t__ vlen; int value; int * member_3; int member_1; int member_0; } ;
typedef TYPE_1__ sdp_attr_t ;
typedef int buffer ;
typedef int bdaddr_t ;


 scalar_t__ EINVAL ;
 scalar_t__ ENOATTR ;
 scalar_t__ ENOMEM ;
 int * NG_HCI_BDADDR_ANY ;
 int PROTOCOL_DESCRIPTOR_LIST_BUFFER_SIZE ;
 scalar_t__ PROTOCOL_DESCRIPTOR_LIST_MINIMAL_SIZE ;
 int SDP_ATTR_INVALID ;
 scalar_t__ SDP_ATTR_OK ;
 int SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST ;
 scalar_t__ SDP_ATTR_RANGE (int ,int ) ;
 scalar_t__ SDP_DATA_ALT16 ;
 scalar_t__ SDP_DATA_ALT32 ;
 scalar_t__ SDP_DATA_ALT8 ;



 int SDP_GET16 (scalar_t__,int ) ;
 int SDP_GET32 (scalar_t__,int ) ;
 int SDP_GET8 (scalar_t__,int ) ;
 int rfcomm_channel_lookup_exit (scalar_t__) ;
 int rfcomm_proto_list_parse (int ,int *,int*,int*) ;
 int sdp_close (void*) ;
 scalar_t__ sdp_error (void*) ;
 void* sdp_open (int const*,int const*) ;
 scalar_t__ sdp_search (void*,int,int *,int,scalar_t__*,int,TYPE_1__*) ;

int
rfcomm_channel_lookup(bdaddr_t const *local, bdaddr_t const *remote,
   int service, int *channel, int *error)
{
 uint8_t buffer[PROTOCOL_DESCRIPTOR_LIST_BUFFER_SIZE];
 void *ss = ((void*)0);
 uint16_t serv = (uint16_t) service;
 uint32_t attr = SDP_ATTR_RANGE(
     SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST,
     SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST);
 sdp_attr_t proto = { SDP_ATTR_INVALID,0,sizeof(buffer),buffer };
 uint32_t type, len;

 if (local == ((void*)0))
  local = NG_HCI_BDADDR_ANY;
 if (remote == ((void*)0) || channel == ((void*)0))
  rfcomm_channel_lookup_exit(EINVAL);

 if ((ss = sdp_open(local, remote)) == ((void*)0))
  rfcomm_channel_lookup_exit(ENOMEM);
 if (sdp_error(ss) != 0)
  rfcomm_channel_lookup_exit(sdp_error(ss));

 if (sdp_search(ss, 1, &serv, 1, &attr, 1, &proto) != 0)
  rfcomm_channel_lookup_exit(sdp_error(ss));
 if (proto.flags != SDP_ATTR_OK)
  rfcomm_channel_lookup_exit(ENOATTR);

 sdp_close(ss);
 ss = ((void*)0);
 if (proto.vlen < PROTOCOL_DESCRIPTOR_LIST_MINIMAL_SIZE)
  rfcomm_channel_lookup_exit(EINVAL);

 SDP_GET8(type, proto.value);

 if (type == SDP_DATA_ALT8) {
  SDP_GET8(len, proto.value);
 } else if (type == SDP_DATA_ALT16) {
  SDP_GET16(len, proto.value);
 } else if (type == SDP_DATA_ALT32) {
  SDP_GET32(len, proto.value);
 } else
  len = 0;

 if (len > 0)
  SDP_GET8(type, proto.value);

 switch (type) {
 case 128:
  SDP_GET8(len, proto.value);
  break;

 case 130:
  SDP_GET16(len, proto.value);
  break;

 case 129:
  SDP_GET32(len, proto.value);
  break;

 default:
  rfcomm_channel_lookup_exit(ENOATTR);

 }

 if (len < PROTOCOL_DESCRIPTOR_LIST_MINIMAL_SIZE)
  rfcomm_channel_lookup_exit(EINVAL);

 return (rfcomm_proto_list_parse(proto.value,
     buffer + proto.vlen, channel, error));
}
