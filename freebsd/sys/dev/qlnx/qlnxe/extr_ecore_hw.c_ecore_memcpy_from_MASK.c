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
typedef  int /*<<< orphan*/  u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef  scalar_t__ osal_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  ECORE_MSG_HW ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,void*,int /*<<< orphan*/ ,scalar_t__,int) ; 

void FUNC2(struct ecore_hwfn *p_hwfn,
		       struct ecore_ptt *p_ptt,
		       void *dest, u32 hw_addr, osal_size_t n)
{
	FUNC0(p_hwfn, ECORE_MSG_HW,
		   "hw_addr 0x%x, dest %p hw_addr 0x%x, size %lu\n",
		   hw_addr, dest, hw_addr, (unsigned long) n);

	FUNC1(p_hwfn, p_ptt, dest, hw_addr, n, false);
}