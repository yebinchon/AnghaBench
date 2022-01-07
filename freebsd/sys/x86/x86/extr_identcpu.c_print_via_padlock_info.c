
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int do_cpuid (int,int *) ;
 int printf (char*,int ,char*) ;

__attribute__((used)) static void
print_via_padlock_info(void)
{
 u_int regs[4];

 do_cpuid(0xc0000001, regs);
 printf("\n  VIA Padlock Features=0x%b", regs[3],
 "\020"
 "\003RNG"
 "\007AES"
 "\011AES-CTR"
 "\013SHA1,SHA256"
 "\015RSA"
 );
}
