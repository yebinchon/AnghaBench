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
typedef  scalar_t__ uint32_t ;
struct vmbus_rxbr {scalar_t__ rxbr_dsize; scalar_t__ rxbr_windex; scalar_t__ rxbr_rindex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static __inline uint32_t
FUNC1(const struct vmbus_rxbr *rbr)
{
	uint32_t rindex, windex;

	/* Get snapshot */
	rindex = rbr->rxbr_rindex;
	windex = rbr->rxbr_windex;

	return (rbr->rxbr_dsize -
	    FUNC0(rindex, windex, rbr->rxbr_dsize));
}