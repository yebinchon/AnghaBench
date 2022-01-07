
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct nvme_opcode_string {int opc; char const* str; } ;


 struct nvme_opcode_string* io_opcode ;

__attribute__((used)) static const char *
get_io_opcode_string(uint16_t opc)
{
 struct nvme_opcode_string *entry;

 entry = io_opcode;

 while (entry->opc != 0xFFFF) {
  if (entry->opc == opc)
   return (entry->str);
  entry++;
 }
 return (entry->str);
}
