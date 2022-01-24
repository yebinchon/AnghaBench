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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct vmbus_rxbr {int rxbr_dsize; int /*<<< orphan*/ * rxbr_data; } ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static __inline uint32_t
FUNC2(const struct vmbus_rxbr *rbr, uint32_t rindex,
    void *dst0, int cplen)
{
	uint8_t *dst = dst0;
	const uint8_t *br_data = rbr->rxbr_data;
	uint32_t br_dsize = rbr->rxbr_dsize;

	if (cplen > br_dsize - rindex) {
		uint32_t fraglen = br_dsize - rindex;

		/* Wrap-around detected. */
		FUNC1(dst, br_data + rindex, fraglen);
		FUNC1(dst + fraglen, br_data, cplen - fraglen);
	} else {
		FUNC1(dst, br_data + rindex, cplen);
	}
	return FUNC0(rindex, cplen, br_dsize);
}