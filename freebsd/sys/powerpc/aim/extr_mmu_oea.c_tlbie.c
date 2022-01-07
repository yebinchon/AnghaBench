
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int tlbie_mtx ;

__attribute__((used)) static void
tlbie(vm_offset_t va)
{

 mtx_lock_spin(&tlbie_mtx);
 __asm __volatile("ptesync");
 __asm __volatile("tlbie %0" :: "r"(va));
 __asm __volatile("eieio; tlbsync; ptesync");
 mtx_unlock_spin(&tlbie_mtx);
}
