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
typedef  int /*<<< orphan*/  uint64_t ;
struct bnxt_link_info {int link_speed; } ;

/* Variables and functions */
#define  HWRM_PORT_PHY_QCFG_OUTPUT_LINK_SPEED_100GB 138 
#define  HWRM_PORT_PHY_QCFG_OUTPUT_LINK_SPEED_100MB 137 
#define  HWRM_PORT_PHY_QCFG_OUTPUT_LINK_SPEED_10GB 136 
#define  HWRM_PORT_PHY_QCFG_OUTPUT_LINK_SPEED_10MB 135 
#define  HWRM_PORT_PHY_QCFG_OUTPUT_LINK_SPEED_1GB 134 
#define  HWRM_PORT_PHY_QCFG_OUTPUT_LINK_SPEED_20GB 133 
#define  HWRM_PORT_PHY_QCFG_OUTPUT_LINK_SPEED_25GB 132 
#define  HWRM_PORT_PHY_QCFG_OUTPUT_LINK_SPEED_2GB 131 
#define  HWRM_PORT_PHY_QCFG_OUTPUT_LINK_SPEED_2_5GB 130 
#define  HWRM_PORT_PHY_QCFG_OUTPUT_LINK_SPEED_40GB 129 
#define  HWRM_PORT_PHY_QCFG_OUTPUT_LINK_SPEED_50GB 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static uint64_t
FUNC2(struct bnxt_link_info *link)
{
	switch (link->link_speed) {
	case HWRM_PORT_PHY_QCFG_OUTPUT_LINK_SPEED_100MB:
		return FUNC1(100);
	case HWRM_PORT_PHY_QCFG_OUTPUT_LINK_SPEED_1GB:
		return FUNC0(1);
	case HWRM_PORT_PHY_QCFG_OUTPUT_LINK_SPEED_2GB:
		return FUNC0(2);
	case HWRM_PORT_PHY_QCFG_OUTPUT_LINK_SPEED_2_5GB:
		return FUNC1(2500);
	case HWRM_PORT_PHY_QCFG_OUTPUT_LINK_SPEED_10GB:
		return FUNC0(10);
	case HWRM_PORT_PHY_QCFG_OUTPUT_LINK_SPEED_20GB:
		return FUNC0(20);
	case HWRM_PORT_PHY_QCFG_OUTPUT_LINK_SPEED_25GB:
		return FUNC0(25);
	case HWRM_PORT_PHY_QCFG_OUTPUT_LINK_SPEED_40GB:
		return FUNC0(40);
	case HWRM_PORT_PHY_QCFG_OUTPUT_LINK_SPEED_50GB:
		return FUNC0(50);
	case HWRM_PORT_PHY_QCFG_OUTPUT_LINK_SPEED_100GB:
		return FUNC0(100);
	case HWRM_PORT_PHY_QCFG_OUTPUT_LINK_SPEED_10MB:
		return FUNC1(10);
	}
	return FUNC0(100);
}