
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {int * b; } ;
typedef TYPE_1__ int128_t ;
 int SDP_GET128 (TYPE_1__*,int const*) ;
 int SDP_GET16 (int,int const*) ;
 int SDP_GET32 (int,int const*) ;
 int SDP_GET64 (int,int const*) ;
 int SDP_GET8 (int,int const*) ;
 int SDP_GET_UUID128 (TYPE_1__*,int const*) ;
 int fprintf (int ,char*,...) ;
 int ntohl (int) ;
 int ntohs (int) ;
 char* sdp_uuid2desc (int) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static void
print_protocol_descriptor(uint8_t const *start, uint8_t const *end)
{
 union {
  uint8_t uint8;
  uint16_t uint16;
  uint32_t uint32;
  uint64_t uint64;
  int128_t int128;
 } value;
 uint32_t type, len, param;


 SDP_GET8(type, start);
 switch (type) {
 case 129:
  SDP_GET16(value.uint16, start);
  fprintf(stdout, "\t%s (%#4.4x)\n", sdp_uuid2desc(value.uint16),
    value.uint16);
  break;

 case 128:
  SDP_GET32(value.uint32, start);
  fprintf(stdout, "\t%#8.8x\n", value.uint32);
  break;

 case 130:
  SDP_GET_UUID128(&value.int128, start);
  fprintf(stdout, "\t%#8.8x-%4.4x-%4.4x-%4.4x-%4.4x%8.8x\n",
    ntohl(*(uint32_t *)&value.int128.b[0]),
    ntohs(*(uint16_t *)&value.int128.b[4]),
    ntohs(*(uint16_t *)&value.int128.b[6]),
    ntohs(*(uint16_t *)&value.int128.b[8]),
    ntohs(*(uint16_t *)&value.int128.b[10]),
    ntohl(*(uint32_t *)&value.int128.b[12]));
  break;

 default:
  fprintf(stderr, "Invalid Protocol Descriptor. " "Not a UUID, type=%#x\n", type);

  return;

 }


 for (param = 1; start < end; param ++) {
  fprintf(stdout, "\t\tProtocol specific parameter #%d: ", param);

  SDP_GET8(type, start);
  switch (type) {
  case 145:
   fprintf(stdout, "nil\n");
   break;

  case 134:
  case 146:
  case 151:
   SDP_GET8(value.uint8, start);
   fprintf(stdout, "u/int8/bool %u\n", value.uint8);
   break;

  case 137:
  case 149:
  case 129:
   SDP_GET16(value.uint16, start);
   fprintf(stdout, "u/int/uuid16 %u\n", value.uint16);
   break;

  case 136:
  case 148:
  case 128:
   SDP_GET32(value.uint32, start);
   fprintf(stdout, "u/int/uuid32 %u\n", value.uint32);
   break;

  case 135:
  case 147:
   SDP_GET64(value.uint64, start);
   fprintf(stdout, "u/int64 %ju\n", value.uint64);
   break;

  case 138:
  case 150:
   SDP_GET128(&value.int128, start);
   fprintf(stdout, "u/int128 %#8.8x%8.8x%8.8x%8.8x\n",
    *(uint32_t *)&value.int128.b[0],
    *(uint32_t *)&value.int128.b[4],
    *(uint32_t *)&value.int128.b[8],
    *(uint32_t *)&value.int128.b[12]);
   break;

  case 130:
   SDP_GET_UUID128(&value.int128, start);
   fprintf(stdout, "uuid128 %#8.8x-%4.4x-%4.4x-%4.4x-%4.4x%8.8x\n",
    ntohl(*(uint32_t *)&value.int128.b[0]),
    ntohs(*(uint16_t *)&value.int128.b[4]),
    ntohs(*(uint16_t *)&value.int128.b[6]),
    ntohs(*(uint16_t *)&value.int128.b[8]),
    ntohs(*(uint16_t *)&value.int128.b[10]),
    ntohl(*(uint32_t *)&value.int128.b[12]));
   break;

  case 139:
  case 131:
   SDP_GET8(len, start);
   for (; start < end && len > 0; start ++, len --)
    fprintf(stdout, "%c", *start);
   fprintf(stdout, "\n");
   break;

  case 141:
  case 133:
   SDP_GET16(len, start);
   for (; start < end && len > 0; start ++, len --)
    fprintf(stdout, "%c", *start);
   fprintf(stdout, "\n");
   break;

  case 140:
  case 132:
   SDP_GET32(len, start);
   for (; start < end && len > 0; start ++, len --)
    fprintf(stdout, "%c", *start);
   fprintf(stdout, "\n");
   break;

  case 142:
  case 152:
   SDP_GET8(len, start);
   for (; start < end && len > 0; start ++, len --)
    fprintf(stdout, "%#2.2x ", *start);
   fprintf(stdout, "\n");
   break;

  case 144:
  case 154:
   SDP_GET16(len, start);
   for (; start < end && len > 0; start ++, len --)
    fprintf(stdout, "%#2.2x ", *start);
   fprintf(stdout, "\n");
   break;

  case 143:
  case 153:
   SDP_GET32(len, start);
   for (; start < end && len > 0; start ++, len --)
    fprintf(stdout, "%#2.2x ", *start);
   fprintf(stdout, "\n");
   break;

  default:
   fprintf(stderr, "Invalid Protocol Descriptor. " "Unknown data type: %#02x\n", type);

   return;

  }
 }
}
