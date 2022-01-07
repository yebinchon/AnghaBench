
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;







 int ISCSI_OPCODE_MASK ;
 int ISER_ERR (char*,int) ;

__attribute__((used)) static bool
is_control_opcode(uint8_t opcode)
{
 bool is_control = 0;

 switch (opcode & ISCSI_OPCODE_MASK) {
  case 130:
  case 132:
  case 131:
  case 128:
   is_control = 1;
   break;
  case 129:
   is_control = 0;
   break;
  default:
   ISER_ERR("unknown opcode %d", opcode);
 }

 return (is_control);
}
