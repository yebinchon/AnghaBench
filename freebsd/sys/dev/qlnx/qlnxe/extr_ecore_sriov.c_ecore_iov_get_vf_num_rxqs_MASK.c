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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ecore_vf_info {int /*<<< orphan*/  num_rxqs; } ;
struct ecore_hwfn {int dummy; } ;

/* Variables and functions */
 struct ecore_vf_info* FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,int) ; 

u8 FUNC1(struct ecore_hwfn *p_hwfn,
			     u16 rel_vf_id)
{
	struct ecore_vf_info *p_vf;

	p_vf = FUNC0(p_hwfn, rel_vf_id, true);
	if (!p_vf)
		return 0;

	return p_vf->num_rxqs;
}