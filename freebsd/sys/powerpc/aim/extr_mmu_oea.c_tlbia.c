
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int powerpc_sync () ;

__attribute__((used)) static void
tlbia(void)
{
 vm_offset_t va;

 for (va = 0; va < 0x00040000; va += 0x00001000) {
  __asm __volatile("tlbie %0" :: "r"(va));
  powerpc_sync();
 }
 __asm __volatile("tlbsync");
 powerpc_sync();
}
