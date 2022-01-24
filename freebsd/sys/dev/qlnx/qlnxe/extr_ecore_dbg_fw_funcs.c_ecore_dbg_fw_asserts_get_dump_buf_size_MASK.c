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
typedef  scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef  enum dbg_status { ____Placeholder_dbg_status } dbg_status ;

/* Variables and functions */
 int DBG_STATUS_OK ; 
 int /*<<< orphan*/  OSAL_NULL ; 
 int FUNC0 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 scalar_t__ FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,struct ecore_ptt*) ; 

enum dbg_status FUNC3(struct ecore_hwfn *p_hwfn,
													   struct ecore_ptt *p_ptt,
													   u32 *buf_size)
{
	enum dbg_status status = FUNC0(p_hwfn, p_ptt);

	*buf_size = 0;

	if (status != DBG_STATUS_OK)
		return status;

	/* Update reset state */
	FUNC2(p_hwfn, p_ptt);

	*buf_size = FUNC1(p_hwfn, p_ptt, OSAL_NULL, false);

	return DBG_STATUS_OK;
}