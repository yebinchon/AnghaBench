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
typedef  int u16 ;
struct TYPE_2__ {void* reply_virt; } ;
struct ecore_vf_info {TYPE_1__ vf_mbx; } ;
struct ecore_hwfn {int dummy; } ;

/* Variables and functions */
 struct ecore_vf_info* FUNC0 (struct ecore_hwfn*,int,int) ; 

void FUNC1(struct ecore_hwfn *p_hwfn,
					    u16	rel_vf_id,
					    void **pp_reply_virt_addr,
					    u16	*p_reply_virt_size)
{
	struct ecore_vf_info *vf_info =
		FUNC0(p_hwfn, rel_vf_id, true);

	if (!vf_info)
		return;

	if (pp_reply_virt_addr)
		*pp_reply_virt_addr = vf_info->vf_mbx.reply_virt;

	if (p_reply_virt_size)
		*p_reply_virt_size = sizeof(*vf_info->vf_mbx.reply_virt);
}