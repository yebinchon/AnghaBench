
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;




__attribute__((used)) static int
ixl_vc_opcode_level(uint16_t opcode)
{
 switch (opcode) {
 case 128:
  return (10);
 default:
  return (5);
 }
}
