#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct xstorm_eth_queue_zone {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue_id; } ;
struct ecore_queue_cid {TYPE_1__ abs; int /*<<< orphan*/  sb_igu_id; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 scalar_t__ BAR0_MAP_REG_XSDM_RAM ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,char*,int) ; 
 int ECORE_INVAL ; 
 int ECORE_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ecore_hwfn*,struct ecore_ptt*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,struct xstorm_eth_queue_zone*,int,int) ; 

enum _ecore_status_t FUNC4(struct ecore_hwfn *p_hwfn,
					    struct ecore_ptt *p_ptt,
					    u16 coalesce,
					    struct ecore_queue_cid *p_cid)
{
	struct xstorm_eth_queue_zone eth_qzone;
	u8 timeset, timer_res;
	u32 address;
	enum _ecore_status_t rc;

	/* Coalesce = (timeset << timer-resolution), timeset is 7bit wide */
	if (coalesce <= 0x7F)
		timer_res = 0;
	else if (coalesce <= 0xFF)
		timer_res = 1;
	else if (coalesce <= 0x1FF)
		timer_res = 2;
	else {
		FUNC0(p_hwfn, "Invalid coalesce value - %d\n", coalesce);
		return ECORE_INVAL;
	}
	timeset = (u8)(coalesce >> timer_res);

	rc = FUNC2(p_hwfn, p_ptt, timer_res,
				     p_cid->sb_igu_id, true);
	if (rc != ECORE_SUCCESS)
		goto out;

	address = BAR0_MAP_REG_XSDM_RAM +
		  FUNC1(p_cid->abs.queue_id);

	rc = FUNC3(p_hwfn, p_ptt, address, &eth_qzone,
				sizeof(struct xstorm_eth_queue_zone), timeset);
out:
	return rc;
}