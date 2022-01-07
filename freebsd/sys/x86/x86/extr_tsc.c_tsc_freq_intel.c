
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int ;
typedef int regs ;
typedef int brand ;


 int C2D (char) ;
 int cpu_exthigh ;
 int do_cpuid (int,int*) ;
 int memcpy (char*,int*,int) ;
 int tsc_freq ;

__attribute__((used)) static void
tsc_freq_intel(void)
{
 char brand[48];
 u_int regs[4];
 uint64_t freq;
 char *p;
 u_int i;






 if (cpu_exthigh >= 0x80000004) {
  p = brand;
  for (i = 0x80000002; i < 0x80000005; i++) {
   do_cpuid(i, regs);
   memcpy(p, regs, sizeof(regs));
   p += sizeof(regs);
  }
  p = ((void*)0);
  for (i = 0; i < sizeof(brand) - 1; i++)
   if (brand[i] == 'H' && brand[i + 1] == 'z')
    p = brand + i;
  if (p != ((void*)0)) {
   p -= 5;
   switch (p[4]) {
   case 'M':
    i = 1;
    break;
   case 'G':
    i = 1000;
    break;
   case 'T':
    i = 1000000;
    break;
   default:
    return;
   }

   if (p[1] == '.') {
    freq = ((p[0]) - '0') * 1000;
    freq += ((p[2]) - '0') * 100;
    freq += ((p[3]) - '0') * 10;
    freq *= i * 1000;
   } else {
    freq = ((p[0]) - '0') * 1000;
    freq += ((p[1]) - '0') * 100;
    freq += ((p[2]) - '0') * 10;
    freq += ((p[3]) - '0');
    freq *= i * 1000000;
   }

   tsc_freq = freq;
  }
 }
}
