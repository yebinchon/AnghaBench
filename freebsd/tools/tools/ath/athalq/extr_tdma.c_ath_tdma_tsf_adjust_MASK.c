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
typedef  int /*<<< orphan*/  t ;
struct if_ath_alq_tdma_tsf_adjust {int /*<<< orphan*/  tsf64_new; int /*<<< orphan*/  tsfdelta; int /*<<< orphan*/  tsf64_old; } ;
struct TYPE_2__ {int /*<<< orphan*/  tstamp_usec; int /*<<< orphan*/  tstamp_sec; int /*<<< orphan*/  threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int /*<<< orphan*/  payload; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct if_ath_alq_tdma_tsf_adjust*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,unsigned int,unsigned long long,unsigned long long,int,unsigned long long) ; 

void
FUNC4(struct if_ath_alq_payload *a)
{
	struct if_ath_alq_tdma_tsf_adjust t;

	FUNC2(&t, &a->payload, sizeof(t));
	FUNC3("[%u.%06u] [%llu] TSFADJUST: TSF64 was %llu, adj=%d, "
	    "now %llu\n",
	    (unsigned int) FUNC0(a->hdr.tstamp_sec),
	    (unsigned int) FUNC0(a->hdr.tstamp_usec),
	    (unsigned long long) FUNC1(a->hdr.threadid),
	    (unsigned long long) FUNC1(t.tsf64_old),
	    (int) FUNC0(t.tsfdelta),
	    (unsigned long long) FUNC1(t.tsf64_new));
}