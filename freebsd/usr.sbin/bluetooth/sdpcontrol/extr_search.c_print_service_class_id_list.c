
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int * b; } ;
typedef TYPE_1__ int128_t ;
 int SDP_GET16 (int,int const*) ;
 int SDP_GET32 (int,int const*) ;
 int SDP_GET8 (int,int const*) ;
 int SDP_GET_UUID128 (TYPE_1__*,int const*) ;
 int fprintf (int ,char*,...) ;
 int ntohl (int) ;
 int ntohs (int ) ;
 char* sdp_uuid2desc (int) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static void
print_service_class_id_list(uint8_t const *start, uint8_t const *end)
{
 uint32_t type, len, value;

 if (end - start < 2) {
  fprintf(stderr, "Invalid Service Class ID List. " "Too short, len=%zd\n", end - start);

  return;
 }

 SDP_GET8(type, start);
 switch (type) {
 case 131:
  SDP_GET8(len, start);
  break;

 case 133:
  SDP_GET16(len, start);
  break;

 case 132:
  SDP_GET32(len, start);
  break;

 default:
  fprintf(stderr, "Invalid Service Class ID List. " "Not a sequence, type=%#x\n", type);

  return;

 }

 if (len > (end - start)) {
  fprintf(stderr, "Invalid Service Class ID List. " "Too long len=%d\n", len);

  return;
 }

 while (start < end) {
  SDP_GET8(type, start);
  switch (type) {
  case 129:
   SDP_GET16(value, start);
   fprintf(stdout, "\t%s (%#4.4x)\n",
     sdp_uuid2desc(value), value);
   break;

  case 128:
   SDP_GET32(value, start);
   fprintf(stdout, "\t%#8.8x\n", value);
   break;

  case 130: {
   int128_t uuid;

   SDP_GET_UUID128(&uuid, start);
   fprintf(stdout, "\t%#8.8x-%4.4x-%4.4x-%4.4x-%4.4x%8.8x\n",
     ntohl(*(uint32_t *)&uuid.b[0]),
     ntohs(*(uint16_t *)&uuid.b[4]),
     ntohs(*(uint16_t *)&uuid.b[6]),
     ntohs(*(uint16_t *)&uuid.b[8]),
     ntohs(*(uint16_t *)&uuid.b[10]),
     ntohl(*(uint32_t *)&uuid.b[12]));
   } break;

  default:
   fprintf(stderr, "Invalid Service Class ID List. " "Not a UUID, type=%#x\n", type);

   return;

  }
 }
}
