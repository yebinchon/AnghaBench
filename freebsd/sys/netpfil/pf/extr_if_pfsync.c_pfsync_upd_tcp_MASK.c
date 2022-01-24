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
struct pfsync_state_peer {scalar_t__ state; int /*<<< orphan*/  seqlo; } ;
struct TYPE_2__ {scalar_t__ state; int /*<<< orphan*/  seqlo; } ;
struct pf_state {TYPE_1__ dst; TYPE_1__ src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pf_state*) ; 
 scalar_t__ PF_TCPS_PROXY_SRC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TCPS_SYN_SENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pfsync_state_peer*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(struct pf_state *st, struct pfsync_state_peer *src,
    struct pfsync_state_peer *dst)
{
	int sync = 0;

	FUNC0(st);

	/*
	 * The state should never go backwards except
	 * for syn-proxy states.  Neither should the
	 * sequence window slide backwards.
	 */
	if ((st->src.state > src->state &&
	    (st->src.state < PF_TCPS_PROXY_SRC ||
	    src->state >= PF_TCPS_PROXY_SRC)) ||

	    (st->src.state == src->state &&
	    FUNC1(st->src.seqlo, FUNC2(src->seqlo))))
		sync++;
	else
		FUNC3(src, &st->src);

	if ((st->dst.state > dst->state) ||

	    (st->dst.state >= TCPS_SYN_SENT &&
	    FUNC1(st->dst.seqlo, FUNC2(dst->seqlo))))
		sync++;
	else
		FUNC3(dst, &st->dst);

	return (sync);
}