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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct ecore_hwfn *p_hwfn,
			    struct ecore_ptt *p_ptt,
			    u32 addr, u32 fill, u32 fill_count)
{
	u32 i;

	for (i = 0; i < fill_count; i++, addr += sizeof(u32))
		FUNC0(p_hwfn, p_ptt, addr, fill);
}