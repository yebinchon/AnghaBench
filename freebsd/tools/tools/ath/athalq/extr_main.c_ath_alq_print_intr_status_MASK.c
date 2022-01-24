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
struct TYPE_2__ {int /*<<< orphan*/  tstamp_usec; int /*<<< orphan*/  tstamp_sec; int /*<<< orphan*/  threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int /*<<< orphan*/  payload; } ;
struct if_ath_alq_interrupt {int /*<<< orphan*/  intr_status; } ;
typedef  int /*<<< orphan*/  is ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct if_ath_alq_interrupt*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,unsigned int,unsigned long long,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct if_ath_alq_payload *a)
{
	struct if_ath_alq_interrupt is;

	/* XXX len check! */
	FUNC2(&is, &a->payload, sizeof(is));

	FUNC3("[%u.%06u] [%llu] INTR: status=0x%08x\n",
	    (unsigned int) FUNC0(a->hdr.tstamp_sec),
	    (unsigned int) FUNC0(a->hdr.tstamp_usec),
	    (unsigned long long) FUNC1(a->hdr.threadid),
	    FUNC0(is.intr_status));
}