
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int uint16_t ;



__attribute__((used)) static void
fuword16_slow0(vm_offset_t kva, void *arg)
{

 *(int *)arg = *(uint16_t *)kva;
}
