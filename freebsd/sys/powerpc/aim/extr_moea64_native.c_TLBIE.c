
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_int ;
typedef scalar_t__ register_t ;


 int ADDR_PIDX_SHFT ;
 int atomic_cmpset_int (scalar_t__ volatile*,int ,int) ;
 scalar_t__ intr_disable () ;
 int intr_restore (scalar_t__) ;
 int isync () ;
 scalar_t__ moea64_crop_tlbie ;
 int moea64_need_lock ;

__attribute__((used)) static __inline void
TLBIE(uint64_t vpn) {

 register_t vpn_hi, vpn_lo;
 register_t msr;
 register_t scratch, intr;


 static volatile u_int tlbie_lock = 0;
 bool need_lock = moea64_need_lock;

 vpn <<= ADDR_PIDX_SHFT;


 if (need_lock) {
  while (!atomic_cmpset_int(&tlbie_lock, 0, 1));
  isync();

  if (moea64_crop_tlbie)
   vpn &= ~(0xffffULL << 48);
 }
 vpn_hi = (uint32_t)(vpn >> 32);
 vpn_lo = (uint32_t)vpn;

 intr = intr_disable();
 __asm __volatile("	    mfmsr %0; 	    mr %1, %0; 	    insrdi %1,%5,1,0; 	    mtmsrd %1; isync; 	    	    sld %1,%2,%4; 	    or %1,%1,%3; 	    tlbie %1; 	    	    mtmsrd %0; isync; 	    eieio; 	    tlbsync; 	    ptesync;"
 : "=r"(msr), "=r"(scratch) : "r"(vpn_hi), "r"(vpn_lo), "r"(32), "r"(1)
     : "memory");
 intr_restore(intr);



 if (need_lock)
  tlbie_lock = 0;
}
