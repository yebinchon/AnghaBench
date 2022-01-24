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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct unaligned_opaque_data {int /*<<< orphan*/  cid; int /*<<< orphan*/  flags; scalar_t__ tcp_payload_offset; scalar_t__ first_mpa_offset; } ;
struct ecore_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ecore_hwfn *p_hwfn,
			 struct unaligned_opaque_data *curr_pkt,
			 u32 opaque_data0, u32 opaque_data1)
{
	u64 opaque_data;

	opaque_data = FUNC1(opaque_data1, opaque_data0);
	*curr_pkt = *((struct unaligned_opaque_data *)&opaque_data);

	/* fix endianity */
	curr_pkt->first_mpa_offset = curr_pkt->tcp_payload_offset +
		FUNC2(curr_pkt->first_mpa_offset);
	curr_pkt->cid = FUNC3(curr_pkt->cid);

	FUNC0(p_hwfn, ECORE_MSG_RDMA,
		   "OPAQUE0=0x%x OPAQUE1=0x%x first_mpa_offset:0x%x\ttcp_payload_offset:0x%x\tflags:0x%x\tcid:0x%x\n",
		   opaque_data0, opaque_data1, curr_pkt->first_mpa_offset,
		   curr_pkt->tcp_payload_offset, curr_pkt->flags,
		   curr_pkt->cid);
}