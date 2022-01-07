
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;





 int SDP_GET16 (int,int const*) ;
 int SDP_GET32 (int,int const*) ;
 int SDP_GET8 (int,int const*) ;
 int fprintf (int ,char*,int) ;
 int print_protocol_descriptor (int const*,int const*) ;
 int stderr ;

__attribute__((used)) static void
print_protocol_descriptor_list(uint8_t const *start, uint8_t const *end)
{
 uint32_t type, len;

 if (end - start < 2) {
  fprintf(stderr, "Invalid Protocol Descriptor List. " "Too short, len=%zd\n", end - start);

  return;
 }

 SDP_GET8(type, start);
 switch (type) {
 case 128:
  SDP_GET8(len, start);
  break;

 case 130:
  SDP_GET16(len, start);
  break;

 case 129:
  SDP_GET32(len, start);
  break;

 default:
  fprintf(stderr, "Invalid Protocol Descriptor List. " "Not a sequence, type=%#x\n", type);

  return;

 }

 if (len > (end - start)) {
  fprintf(stderr, "Invalid Protocol Descriptor List. " "Too long, len=%d\n", len);

  return;
 }

 while (start < end) {
  SDP_GET8(type, start);
  switch (type) {
  case 128:
   SDP_GET8(len, start);
   break;

  case 130:
   SDP_GET16(len, start);
   break;

  case 129:
   SDP_GET32(len, start);
   break;

  default:
   fprintf(stderr, "Invalid Protocol Descriptor List. " "Not a sequence, type=%#x\n", type);

   return;

  }

  if (len > (end - start)) {
   fprintf(stderr, "Invalid Protocol Descriptor List. " "Too long, len=%d\n", len);

   return;
  }

  print_protocol_descriptor(start, start + len);
  start += len;
 }
}
