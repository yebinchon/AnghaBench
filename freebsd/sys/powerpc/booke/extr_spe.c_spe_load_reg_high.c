
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EVLDW (int) ;

__attribute__((used)) static void
spe_load_reg_high(int reg, uint32_t val)
{


 switch (reg) {
 case 1: __asm __volatile("evmergelo ""1"",%0,""1" :: "r"(val)); break;; case 2: __asm __volatile("evmergelo ""2"",%0,""2" :: "r"(val)); break;; case 3: __asm __volatile("evmergelo ""3"",%0,""3" :: "r"(val)); break;; case 4: __asm __volatile("evmergelo ""4"",%0,""4" :: "r"(val)); break;;
 case 5: __asm __volatile("evmergelo ""5"",%0,""5" :: "r"(val)); break;; case 6: __asm __volatile("evmergelo ""6"",%0,""6" :: "r"(val)); break;; case 7: __asm __volatile("evmergelo ""7"",%0,""7" :: "r"(val)); break;; case 8: __asm __volatile("evmergelo ""8"",%0,""8" :: "r"(val)); break;;
 case 9: __asm __volatile("evmergelo ""9"",%0,""9" :: "r"(val)); break;; case 10: __asm __volatile("evmergelo ""10"",%0,""10" :: "r"(val)); break;; case 11: __asm __volatile("evmergelo ""11"",%0,""11" :: "r"(val)); break;; case 12: __asm __volatile("evmergelo ""12"",%0,""12" :: "r"(val)); break;;
 case 13: __asm __volatile("evmergelo ""13"",%0,""13" :: "r"(val)); break;; case 14: __asm __volatile("evmergelo ""14"",%0,""14" :: "r"(val)); break;; case 15: __asm __volatile("evmergelo ""15"",%0,""15" :: "r"(val)); break;; case 16: __asm __volatile("evmergelo ""16"",%0,""16" :: "r"(val)); break;;
 case 17: __asm __volatile("evmergelo ""17"",%0,""17" :: "r"(val)); break;; case 18: __asm __volatile("evmergelo ""18"",%0,""18" :: "r"(val)); break;; case 19: __asm __volatile("evmergelo ""19"",%0,""19" :: "r"(val)); break;; case 20: __asm __volatile("evmergelo ""20"",%0,""20" :: "r"(val)); break;;
 case 21: __asm __volatile("evmergelo ""21"",%0,""21" :: "r"(val)); break;; case 22: __asm __volatile("evmergelo ""22"",%0,""22" :: "r"(val)); break;; case 23: __asm __volatile("evmergelo ""23"",%0,""23" :: "r"(val)); break;; case 24: __asm __volatile("evmergelo ""24"",%0,""24" :: "r"(val)); break;;
 case 25: __asm __volatile("evmergelo ""25"",%0,""25" :: "r"(val)); break;; case 26: __asm __volatile("evmergelo ""26"",%0,""26" :: "r"(val)); break;; case 27: __asm __volatile("evmergelo ""27"",%0,""27" :: "r"(val)); break;; case 28: __asm __volatile("evmergelo ""28"",%0,""28" :: "r"(val)); break;;
 case 29: __asm __volatile("evmergelo ""29"",%0,""29" :: "r"(val)); break;; case 30: __asm __volatile("evmergelo ""30"",%0,""30" :: "r"(val)); break;; case 31: __asm __volatile("evmergelo ""31"",%0,""31" :: "r"(val)); break;; case 0: __asm __volatile("evmergelo ""0"",%0,""0" :: "r"(val)); break;;
 }


}
