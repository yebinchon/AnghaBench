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
typedef  scalar_t__ uint32_t ;
struct vmbus_txbr {scalar_t__ txbr_dsize; int /*<<< orphan*/ * txbr_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__) ; 

__attribute__((used)) static __inline uint32_t
FUNC2(const struct vmbus_txbr *tbr, uint32_t windex,
    const void *src0, uint32_t cplen)
{
	const uint8_t *src = src0;
	uint8_t *br_data = tbr->txbr_data;
	uint32_t br_dsize = tbr->txbr_dsize;

	if (cplen > br_dsize - windex) {
		uint32_t fraglen = br_dsize - windex;

		/* Wrap-around detected */
		FUNC1(br_data + windex, src, fraglen);
		FUNC1(br_data, src + fraglen, cplen - fraglen);
	} else {
		FUNC1(br_data + windex, src, cplen);
	}
	return FUNC0(windex, cplen, br_dsize);
}