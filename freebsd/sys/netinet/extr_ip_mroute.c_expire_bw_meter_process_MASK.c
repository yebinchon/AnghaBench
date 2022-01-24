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
struct vnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BW_METER_PERIOD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct vnet*) ; 
 int MRT_MFC_BW_UPCALL ; 
 int /*<<< orphan*/  V_bw_meter_ch ; 
 int V_mrt_api_config ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curvnet ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
    FUNC1((struct vnet *) arg);

    if (V_mrt_api_config & MRT_MFC_BW_UPCALL)
	FUNC2();

    FUNC3(&V_bw_meter_ch, BW_METER_PERIOD, expire_bw_meter_process,
	curvnet);
    FUNC0();
}