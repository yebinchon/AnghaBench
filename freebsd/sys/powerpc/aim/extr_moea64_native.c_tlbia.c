
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int register_t ;


 int EIEIO () ;
 int TLBSYNC () ;
 int mfpvr () ;

__attribute__((used)) static void
tlbia(void)
{
 vm_offset_t i;

 register_t msr, scratch;


 i = 0xc00;
 switch (mfpvr() >> 16) {
 case 135:
 case 134:
 case 132:
 case 133:
 case 131:
 case 130:
 case 129:
 case 128:
  i = 0;
  break;
 }

 TLBSYNC();

 for (; i < 0x400000; i += 0x00001000) {



  __asm __volatile("		    mfmsr %0; 		    mr %1, %0; 		    insrdi %1,%3,1,0; 		    mtmsrd %1; 		    isync; 		    		    tlbiel %2; 		    		    mtmsrd %0; 		    isync;"
  : "=r"(msr), "=r"(scratch) : "r"(i), "r"(1));

 }

 EIEIO();
 TLBSYNC();
}
