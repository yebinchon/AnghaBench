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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ start_pq; } ;
struct ecore_hwfn {TYPE_1__ qm_info; } ;

/* Variables and functions */
 scalar_t__* FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ecore_hwfn *p_hwfn,
				  u32 pq_flags, u16 pq_val)
{
	u16 *base_pq_idx = FUNC0(p_hwfn, pq_flags);

	*base_pq_idx = p_hwfn->qm_info.start_pq + pq_val;
}