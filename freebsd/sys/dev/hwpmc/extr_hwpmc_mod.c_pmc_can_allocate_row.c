
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pmc_mode { ____Placeholder_pmc_mode } pmc_mode ;
typedef enum pmc_disp { ____Placeholder_pmc_disp } pmc_disp ;


 int ALR ;
 int EBUSY ;
 int PMC ;
 int PMCDBG2 (int ,int ,int,char*,int,int) ;
 int PMC_DISP_STANDALONE ;
 int PMC_DISP_THREAD ;
 scalar_t__ PMC_IS_SYSTEM_MODE (int) ;
 int PMC_ROW_DISP_IS_FREE (int) ;
 scalar_t__ PMC_ROW_DISP_IS_STANDALONE (int) ;
 scalar_t__ PMC_ROW_DISP_IS_THREAD (int) ;
 int SX_XLOCKED ;
 int pmc_sx ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
pmc_can_allocate_row(int ri, enum pmc_mode mode)
{
 enum pmc_disp disp;

 sx_assert(&pmc_sx, SX_XLOCKED);

 PMCDBG2(PMC,ALR,1, "can-allocate-row ri=%d mode=%d", ri, mode);

 if (PMC_IS_SYSTEM_MODE(mode))
  disp = PMC_DISP_STANDALONE;
 else
  disp = PMC_DISP_THREAD;
 if (!PMC_ROW_DISP_IS_FREE(ri) &&
     !(disp == PMC_DISP_THREAD && PMC_ROW_DISP_IS_THREAD(ri)) &&
     !(disp == PMC_DISP_STANDALONE && PMC_ROW_DISP_IS_STANDALONE(ri)))
  return EBUSY;





 PMCDBG2(PMC,ALR,2, "can-allocate-row ri=%d mode=%d ok", ri, mode);

 return 0;

}
