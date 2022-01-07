
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MSR_AMD6TH_START ;
 int print_msr_pm (int,int,int,int) ;

__attribute__((used)) static void
dump_intel_msr_pm(const char *bitmap, int vcpu)
{
 int byte, bit, readable, writeable;
 uint32_t msr;

 for (msr = 0; msr < 0x2000; msr++) {
  byte = msr / 8;
  bit = msr & 0x7;


  readable = (bitmap[byte] & (1 << bit)) ? 0 : 1;
  writeable = (bitmap[2048 + byte] & (1 << bit)) ? 0 : 1;
  print_msr_pm(msr, vcpu, readable, writeable);


  byte += 1024;
  readable = (bitmap[byte] & (1 << bit)) ? 0 : 1;
  writeable = (bitmap[2048 + byte] & (1 << bit)) ? 0 : 1;
  print_msr_pm(msr + MSR_AMD6TH_START, vcpu, readable,
    writeable);
 }
}
