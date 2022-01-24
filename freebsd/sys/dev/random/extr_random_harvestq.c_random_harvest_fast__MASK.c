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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  size_t u_int ;
struct TYPE_3__ {size_t pos; int /*<<< orphan*/ * buf; } ;
struct TYPE_4__ {TYPE_1__ hc_entropy_fast_accumulator; } ;

/* Variables and functions */
 size_t RANDOM_ACCUM_MAX ; 
 scalar_t__ FUNC0 () ; 
 TYPE_2__ harvest_context ; 
 int /*<<< orphan*/  FUNC1 (void const*,size_t,int /*<<< orphan*/ ) ; 

void
FUNC2(const void *entropy, u_int size)
{
	u_int pos;

	pos = harvest_context.hc_entropy_fast_accumulator.pos;
	harvest_context.hc_entropy_fast_accumulator.buf[pos] ^= FUNC1(entropy, size, (uint32_t)FUNC0());
	harvest_context.hc_entropy_fast_accumulator.pos = (pos + 1)%RANDOM_ACCUM_MAX;
}