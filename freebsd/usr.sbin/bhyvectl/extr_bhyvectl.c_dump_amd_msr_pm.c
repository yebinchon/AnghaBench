
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MSR_AMD6TH_START ;
 int MSR_AMD7TH_START ;
 int print_msr_pm (int,int,int,int) ;

__attribute__((used)) static void
dump_amd_msr_pm(const char *bitmap, int vcpu)
{
 int byte, bit, readable, writeable;
 uint32_t msr;

 for (msr = 0; msr < 0x2000; msr++) {
  byte = msr / 4;
  bit = (msr % 4) * 2;


  readable = (bitmap[byte] & (1 << bit)) ? 0 : 1;
  writeable = (bitmap[byte] & (2 << bit)) ? 0 : 1;
  print_msr_pm(msr, vcpu, readable, writeable);


  byte += 2048;
  readable = (bitmap[byte] & (1 << bit)) ? 0 : 1;
  writeable = (bitmap[byte] & (2 << bit)) ? 0 : 1;
  print_msr_pm(msr + MSR_AMD6TH_START, vcpu, readable,
    writeable);


  byte += 4096;
  readable = (bitmap[byte] & (1 << bit)) ? 0 : 1;
  writeable = (bitmap[byte] & (2 << bit)) ? 0 : 1;
  print_msr_pm(msr + MSR_AMD7TH_START, vcpu, readable,
    writeable);
 }
}
