
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ db_addr_t ;
typedef int boolean_t ;


 scalar_t__ MipsEmulateBranch (int ,scalar_t__,int ,int ) ;
 int kdb_frame ;

db_addr_t
next_instr_address(db_addr_t pc, boolean_t bd)
{
 db_addr_t next;

 next = (db_addr_t)MipsEmulateBranch(kdb_frame, pc, 0, 0);
 return (next);
}
