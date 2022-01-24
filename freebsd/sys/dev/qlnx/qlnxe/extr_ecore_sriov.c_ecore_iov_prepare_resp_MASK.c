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
typedef  int u16 ;
struct ecore_iov_vf_mbx {int /*<<< orphan*/ * offset; scalar_t__ reply_virt; } ;
struct ecore_vf_info {struct ecore_iov_vf_mbx vf_mbx; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct channel_list_end_tlv {int dummy; } ;

/* Variables and functions */
 int CHANNEL_TLV_LIST_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ecore_hwfn *p_hwfn,
				   struct ecore_ptt *p_ptt,
				   struct ecore_vf_info *vf_info,
				   u16 type, u16 length, u8 status)
{
	struct ecore_iov_vf_mbx *mbx = &vf_info->vf_mbx;

	mbx->offset = (u8 *)mbx->reply_virt;

	FUNC0(&mbx->offset, type, length);
	FUNC0(&mbx->offset, CHANNEL_TLV_LIST_END,
		      sizeof(struct channel_list_end_tlv));

	FUNC1(p_hwfn, p_ptt, vf_info, length, status);
}