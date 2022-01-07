
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACB ;


 int GTIMEOUT ;
 int TRMREG_GEN_STATUS ;
 int TRMREG_GEN_TIMER ;
 int trm_reg_read8 (int ) ;
 int trm_reg_write8 (int,int ) ;

__attribute__((used)) static void
NVRAM_trm_wait_30us(PACB pACB)
{


 trm_reg_write8(5, TRMREG_GEN_TIMER);
 while (!(trm_reg_read8(TRMREG_GEN_STATUS) & GTIMEOUT));
 return;
}
