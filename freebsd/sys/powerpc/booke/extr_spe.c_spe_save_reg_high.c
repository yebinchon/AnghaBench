
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EVSTDW (int) ;

__attribute__((used)) static uint32_t
spe_save_reg_high(int reg)
{
 uint32_t vec[2];


 switch (reg) {
 case 0: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(0) : "memory"); break;; case 1: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(1) : "memory"); break;; case 2: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(2) : "memory"); break;; case 3: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(3) : "memory"); break;;
 case 4: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(4) : "memory"); break;; case 5: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(5) : "memory"); break;; case 6: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(6) : "memory"); break;; case 7: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(7) : "memory"); break;;
 case 8: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(8) : "memory"); break;; case 9: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(9) : "memory"); break;; case 10: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(10) : "memory"); break;; case 11: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(11) : "memory"); break;;
 case 12: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(12) : "memory"); break;; case 13: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(13) : "memory"); break;; case 14: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(14) : "memory"); break;; case 15: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(15) : "memory"); break;;
 case 16: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(16) : "memory"); break;; case 17: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(17) : "memory"); break;; case 18: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(18) : "memory"); break;; case 19: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(19) : "memory"); break;;
 case 20: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(20) : "memory"); break;; case 21: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(21) : "memory"); break;; case 22: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(22) : "memory"); break;; case 23: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(23) : "memory"); break;;
 case 24: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(24) : "memory"); break;; case 25: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(25) : "memory"); break;; case 26: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(26) : "memory"); break;; case 27: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(27) : "memory"); break;;
 case 28: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(28) : "memory"); break;; case 29: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(29) : "memory"); break;; case 30: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(30) : "memory"); break;; case 31: __asm __volatile ("evstdw %1,0(%0)" :: "b"(vec), "n"(31) : "memory"); break;;
 }


 return (vec[0]);
}
