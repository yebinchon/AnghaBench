#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ subcode; scalar_t__ opcode; } ;
union octeon_rh {TYPE_2__ r; } ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct octeon_device {int dummy; } ;
struct lio_recv_info {TYPE_1__* recv_pkt; struct __dispatch* rsvd; } ;
struct lio_droq_info {scalar_t__ length; } ;
struct TYPE_6__ {int /*<<< orphan*/  dropped_nodispatch; int /*<<< orphan*/  dropped_nomem; } ;
struct lio_droq {TYPE_3__ stats; int /*<<< orphan*/  dispatch_stq_head; int /*<<< orphan*/  read_idx; int /*<<< orphan*/  buffer_size; } ;
struct __dispatch {int /*<<< orphan*/  node; scalar_t__ disp_fn; struct lio_recv_info* rinfo; } ;
typedef  scalar_t__ lio_dispatch_fn_t ;
struct TYPE_4__ {union octeon_rh rh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 struct lio_recv_info* FUNC1 (struct octeon_device*,struct lio_droq*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,char*,unsigned int,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct octeon_device *oct, struct lio_droq *droq,
		      union octeon_rh *rh, struct lio_droq_info *info)
{
	struct lio_recv_info	*rinfo;
	lio_dispatch_fn_t	disp_fn;
	uint32_t		cnt;

	cnt = FUNC3(droq->buffer_size, (uint32_t)info->length);

	disp_fn = FUNC4(oct, (uint16_t)rh->r.opcode,
				   (uint16_t)rh->r.subcode);
	if (disp_fn) {
		rinfo = FUNC1(oct, droq, cnt, droq->read_idx);
		if (rinfo != NULL) {
			struct __dispatch *rdisp = rinfo->rsvd;

			rdisp->rinfo = rinfo;
			rdisp->disp_fn = disp_fn;
			rinfo->recv_pkt->rh = *rh;
			FUNC0(&droq->dispatch_stq_head,
					   &rdisp->node, entries);
		} else {
			droq->stats.dropped_nomem++;
		}
	} else {
		FUNC2(oct, "DROQ: No dispatch function (opcode %u/%u)\n",
			    (unsigned int)rh->r.opcode,
			    (unsigned int)rh->r.subcode);
		droq->stats.dropped_nodispatch++;
	}

	return (cnt);
}