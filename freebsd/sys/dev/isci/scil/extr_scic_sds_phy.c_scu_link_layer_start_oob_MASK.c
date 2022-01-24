#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int U32 ;
typedef  int /*<<< orphan*/  SCIC_SDS_PHY_T ;

/* Variables and functions */
 int /*<<< orphan*/  HARD_RESET ; 
 int /*<<< orphan*/  OOB_ENABLE ; 
 int /*<<< orphan*/  OOB_RESET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static
void FUNC3(
   SCIC_SDS_PHY_T *this_phy
)
{
   U32 scu_sas_pcfg_value;

   /* Reset OOB sequence - start */
   scu_sas_pcfg_value = FUNC1(this_phy);
   scu_sas_pcfg_value &=
      ~(FUNC0(OOB_RESET) | FUNC0(HARD_RESET));
   FUNC2(this_phy, scu_sas_pcfg_value);
   FUNC1(this_phy);
   /* Reset OOB sequence - end */

   /* Start OOB sequence - start */
   scu_sas_pcfg_value = FUNC1(this_phy);
   scu_sas_pcfg_value |= FUNC0(OOB_ENABLE);
   FUNC2(this_phy, scu_sas_pcfg_value);
   FUNC1(this_phy);
   /* Start OOB sequence - end */
}