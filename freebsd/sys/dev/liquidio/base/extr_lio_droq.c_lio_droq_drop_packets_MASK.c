#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
struct octeon_device {int dummy; } ;
struct lio_droq_info {scalar_t__ length; } ;
struct TYPE_4__ {int /*<<< orphan*/  bytes_received; } ;
struct lio_droq {size_t read_idx; scalar_t__ refill_count; int /*<<< orphan*/  max_count; int /*<<< orphan*/  buffer_size; TYPE_2__ stats; TYPE_1__* recv_buf_list; } ;
struct TYPE_3__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct octeon_device*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 size_t FUNC2 (size_t,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void
FUNC4(struct octeon_device *oct, struct lio_droq *droq,
		      uint32_t cnt)
{
	struct lio_droq_info	*info;
	uint32_t		i = 0, buf_cnt;

	for (i = 0; i < cnt; i++) {
		info = (struct lio_droq_info *)
			droq->recv_buf_list[droq->read_idx].data;

		FUNC3((uint64_t *)info, 2);

		if (info->length) {
			info->length += 8;
			droq->stats.bytes_received += info->length;
			buf_cnt = FUNC1(droq->buffer_size,
							(uint32_t)info->length);
		} else {
			FUNC0(oct, "DROQ: In drop: pkt with len 0\n");
			buf_cnt = 1;
		}

		droq->read_idx = FUNC2(droq->read_idx, buf_cnt,
						droq->max_count);
		droq->refill_count += buf_cnt;
	}
}