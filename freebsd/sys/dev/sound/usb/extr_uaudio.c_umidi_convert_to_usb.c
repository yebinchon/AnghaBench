
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct umidi_sub_chan {int* temp_0; int* temp_cmd; int* temp_1; int state; } ;
 void* UMIDI_ST_UNKNOWN ;

__attribute__((used)) static uint8_t
umidi_convert_to_usb(struct umidi_sub_chan *sub, uint8_t cn, uint8_t b)
{
 uint8_t p0 = (cn << 4);

 if (b >= 0xf8) {
  sub->temp_0[0] = p0 | 0x0f;
  sub->temp_0[1] = b;
  sub->temp_0[2] = 0;
  sub->temp_0[3] = 0;
  sub->temp_cmd = sub->temp_0;
  return (1);

 } else if (b >= 0xf0) {
  switch (b) {
  case 0xf0:
   sub->temp_1[1] = b;
   sub->state = 129;
   break;
  case 0xf1:
  case 0xf3:
   sub->temp_1[1] = b;
   sub->state = 133;
   break;
  case 0xf2:
   sub->temp_1[1] = b;
   sub->state = 132;
   break;
  case 0xf4:
  case 0xf5:
   sub->state = UMIDI_ST_UNKNOWN;
   break;
  case 0xf6:
   sub->temp_1[0] = p0 | 0x05;
   sub->temp_1[1] = 0xf6;
   sub->temp_1[2] = 0;
   sub->temp_1[3] = 0;
   sub->temp_cmd = sub->temp_1;
   sub->state = UMIDI_ST_UNKNOWN;
   return (1);

  case 0xf7:
   switch (sub->state) {
   case 130:
    sub->temp_1[0] = p0 | 0x05;
    sub->temp_1[1] = 0xf7;
    sub->temp_1[2] = 0;
    sub->temp_1[3] = 0;
    sub->temp_cmd = sub->temp_1;
    sub->state = UMIDI_ST_UNKNOWN;
    return (1);
   case 129:
    sub->temp_1[0] = p0 | 0x06;
    sub->temp_1[2] = 0xf7;
    sub->temp_1[3] = 0;
    sub->temp_cmd = sub->temp_1;
    sub->state = UMIDI_ST_UNKNOWN;
    return (1);
   case 128:
    sub->temp_1[0] = p0 | 0x07;
    sub->temp_1[3] = 0xf7;
    sub->temp_cmd = sub->temp_1;
    sub->state = UMIDI_ST_UNKNOWN;
    return (1);
   }
   sub->state = UMIDI_ST_UNKNOWN;
   break;
  }
 } else if (b >= 0x80) {
  sub->temp_1[1] = b;
  if ((b >= 0xc0) && (b <= 0xdf)) {
   sub->state = 133;
  } else {
   sub->state = 132;
  }
 } else {
  switch (sub->state) {
  case 133:
   if (sub->temp_1[1] < 0xf0) {
    p0 |= sub->temp_1[1] >> 4;
   } else {
    p0 |= 0x02;
    sub->state = UMIDI_ST_UNKNOWN;
   }
   sub->temp_1[0] = p0;
   sub->temp_1[2] = b;
   sub->temp_1[3] = 0;
   sub->temp_cmd = sub->temp_1;
   return (1);
  case 132:
   sub->temp_1[2] = b;
   sub->state = 131;
   break;
  case 131:
   if (sub->temp_1[1] < 0xf0) {
    p0 |= sub->temp_1[1] >> 4;
    sub->state = 132;
   } else {
    p0 |= 0x03;
    sub->state = UMIDI_ST_UNKNOWN;
   }
   sub->temp_1[0] = p0;
   sub->temp_1[3] = b;
   sub->temp_cmd = sub->temp_1;
   return (1);
  case 130:
   sub->temp_1[1] = b;
   sub->state = 129;
   break;
  case 129:
   sub->temp_1[2] = b;
   sub->state = 128;
   break;
  case 128:
   sub->temp_1[0] = p0 | 0x04;
   sub->temp_1[3] = b;
   sub->temp_cmd = sub->temp_1;
   sub->state = 130;
   return (1);
  default:
   break;
  }
 }
 return (0);
}
