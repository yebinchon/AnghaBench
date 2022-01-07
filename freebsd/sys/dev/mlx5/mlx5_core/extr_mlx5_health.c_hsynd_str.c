
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static const char *hsynd_str(u8 synd)
{
 switch (synd) {
 case 132:
  return "firmware internal error";
 case 128:
  return "irisc not responding";
 case 129:
  return "unrecoverable hardware error";
 case 137:
  return "firmware CRC error";
 case 134:
  return "ICM fetch PCI error";
 case 130:
  return "HW fatal error\n";
 case 138:
  return "async EQ buffer overrun";
 case 136:
  return "EQ error";
 case 135:
  return "Invalid EQ referenced";
 case 133:
  return "FFSER error";
 case 131:
  return "High temprature";
 default:
  return "unrecognized error";
 }
}
