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
struct if_ath_alq_tdma_timer_set {int /*<<< orphan*/  bt_nextatim; int /*<<< orphan*/  bt_nextswba; int /*<<< orphan*/  bt_nextdba; int /*<<< orphan*/  bt_nexttbtt; int /*<<< orphan*/  bt_intval; int /*<<< orphan*/  sc_tdmaswbaprep; int /*<<< orphan*/  sc_tdmadbaprep; int /*<<< orphan*/  bt_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  threadid; int /*<<< orphan*/  tstamp_usec; int /*<<< orphan*/  tstamp_sec; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int /*<<< orphan*/  payload; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct if_ath_alq_tdma_timer_set*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,unsigned int,unsigned long long,int,int,int,int,int,int,int,int) ; 

void
FUNC4(struct if_ath_alq_payload *a)
{
	struct if_ath_alq_tdma_timer_set t;

	FUNC2(&t, &a->payload, sizeof(t));
	FUNC3("[%u.%06u] [%llu] TIMERSET: bt_intval=%d nexttbtt=%d "
	    "nextdba=%d nextswba=%d nextatim=%d flags=0x%x tdmadbaprep=%d "
	    "tdmaswbaprep=%d\n",
	    (unsigned int) FUNC0(a->hdr.tstamp_sec),
	    (unsigned int) FUNC0(a->hdr.tstamp_usec),
	    (unsigned long long) FUNC1(a->hdr.threadid),
	    FUNC0(t.bt_intval),
	    FUNC0(t.bt_nexttbtt),
	    FUNC0(t.bt_nextdba),
	    FUNC0(t.bt_nextswba),
	    FUNC0(t.bt_nextatim),
	    FUNC0(t.bt_flags),
	    FUNC0(t.sc_tdmadbaprep),
	    FUNC0(t.sc_tdmaswbaprep));
}