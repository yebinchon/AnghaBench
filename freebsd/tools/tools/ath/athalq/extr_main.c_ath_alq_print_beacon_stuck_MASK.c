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
struct if_ath_alq_payload {TYPE_1__ hdr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,unsigned int,unsigned long long) ; 

__attribute__((used)) static void
FUNC3(struct if_ath_alq_payload *a)
{

	FUNC2("[%u.%06u] [%llu] BSTUCK\n",
	    (unsigned int) FUNC0(a->hdr.tstamp_sec),
	    (unsigned int) FUNC0(a->hdr.tstamp_usec),
	    (unsigned long long) FUNC1(a->hdr.threadid));
}