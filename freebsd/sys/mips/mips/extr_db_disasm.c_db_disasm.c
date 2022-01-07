
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef scalar_t__ db_addr_t ;


 int db_read_bytes (int ,size_t,char*) ;
 int md_printins (int,scalar_t__) ;
 scalar_t__ vtophys (int ) ;

db_addr_t
db_disasm(db_addr_t loc, bool altfmt)

{
 int ins;

 if (vtophys((vm_offset_t)loc)) {
  db_read_bytes((vm_offset_t)loc, (size_t)sizeof(int),
      (char *)&ins);
  md_printins(ins, loc);
 }

 return (loc + sizeof(int));
}
