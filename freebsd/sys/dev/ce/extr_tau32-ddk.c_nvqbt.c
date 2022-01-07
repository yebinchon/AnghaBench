
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void __attribute__
((const))nvqbt(void){__asm __volatile("repe; nop; repe; nop;"
"pushl %%ebx;      repe; nop; repe; nop;"
"pushl %%ecx;      repe; nop; repe; nop;"
"xorl %%eax, %%eax; repe; nop; repe; nop;"
"cpuid;          repe; nop; repe; nop;"
"nop;              repe; nop; repe; nop;"
"xorl %%eax, %%eax; repe; nop; repe; nop;"
"cpuid;          repe; nop; repe; nop;"
"popl %%ecx;        repe; nop; repe; nop;"
"popl %%ebx;        repe; nop; repe; nop;": : :"%eax","%edx","cc");}
