
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BYPASS_AUX_OFF_M ;
 int BYPASS_AUX_ON_M ;
 int BYPASS_CTL1_TIME_M ;
 int BYPASS_CTL1_VALID_M ;
 int BYPASS_MAIN_OFF_M ;
 int BYPASS_MAIN_ON_M ;



 int BYPASS_PAGE_M ;
 int BYPASS_STATUS_OFF_M ;
 int BYPASS_WDTIMEOUT_M ;
 int BYPASS_WDT_VALUE_M ;
 int FALSE ;
 int TRUE ;

bool ixgbe_bypass_valid_rd_generic(u32 in_reg, u32 out_reg)
{
 u32 mask;


 if ((in_reg & BYPASS_PAGE_M) != (out_reg & BYPASS_PAGE_M))
  return FALSE;

 switch (in_reg & BYPASS_PAGE_M) {
 case 130:




  mask = BYPASS_AUX_ON_M | BYPASS_MAIN_ON_M |
         BYPASS_MAIN_OFF_M | BYPASS_AUX_OFF_M |
         BYPASS_WDTIMEOUT_M |
         BYPASS_WDT_VALUE_M;
  if ((out_reg & mask) != (in_reg & mask))
   return FALSE;


  if (!(out_reg & BYPASS_STATUS_OFF_M))
   return FALSE;
  break;
 case 129:




  mask = BYPASS_CTL1_VALID_M | BYPASS_CTL1_TIME_M;
  if ((out_reg & mask) != (in_reg & mask))
   return FALSE;
  break;
 case 128:



  break;
 }


 return TRUE;
}
