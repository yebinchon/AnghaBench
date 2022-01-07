
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_long ;


 int kvm_counter_u64_fetch (int ,int ) ;
 int kvmd ;
 scalar_t__ kvmd_init () ;

uint64_t
kread_counter(u_long addr)
{

 if (kvmd_init() < 0)
  return (-1);

 return (kvm_counter_u64_fetch(kvmd, addr));
}
