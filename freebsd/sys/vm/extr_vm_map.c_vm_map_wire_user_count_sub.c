
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int atomic_subtract_long (int *,int ) ;
 int vm_user_wire_count ;

__attribute__((used)) static void
vm_map_wire_user_count_sub(u_long npages)
{

 atomic_subtract_long(&vm_user_wire_count, npages);
}
