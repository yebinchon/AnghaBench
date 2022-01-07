
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 scalar_t__ NFORWARD ;
 int free_slot_by_index (int) ;

__attribute__((used)) static int
free_slot_by_xid(u_int32_t xid)
{
 int entry;

 entry = xid % (u_int32_t)NFORWARD;
 return (free_slot_by_index(entry));
}
