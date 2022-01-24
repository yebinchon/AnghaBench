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
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  SCIC_SDS_PHY_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUSPEND_PROTOCOL_ENGINE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(
   SCIC_SDS_PHY_T * this_phy
)
{
   U32 scu_sas_pcfg_value;

   scu_sas_pcfg_value = FUNC1(this_phy);
   scu_sas_pcfg_value |= FUNC0(SUSPEND_PROTOCOL_ENGINE);
   FUNC2(this_phy, scu_sas_pcfg_value);

   FUNC3(
      this_phy, SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX
   );
}