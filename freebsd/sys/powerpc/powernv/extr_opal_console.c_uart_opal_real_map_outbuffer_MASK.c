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
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ tmpbuf; int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int MTX_NOWITNESS ; 
 int MTX_QUIET ; 
 int MTX_SPIN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,void*,scalar_t__) ; 
 scalar_t__ FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ opalcons_buffer ; 
 int /*<<< orphan*/  pmap_bootstrapped ; 

__attribute__((used)) static void
FUNC5(uint64_t *bufferp, uint64_t *lenp)
{

	if (!FUNC3(&opalcons_buffer.mtx))
		FUNC2(&opalcons_buffer.mtx, "uart_opal", NULL,
		    MTX_SPIN | MTX_QUIET | MTX_NOWITNESS);

	if (!pmap_bootstrapped)
		return;

	FUNC4(&opalcons_buffer.mtx);

	opalcons_buffer.size = *(uint64_t *)(*lenp) =
	    FUNC1(sizeof(opalcons_buffer.tmpbuf), *(uint64_t *)(*lenp));
	FUNC0(opalcons_buffer.tmpbuf, (void *)(*bufferp),
	    *(uint64_t *)(*lenp));
	*bufferp = (uint64_t)opalcons_buffer.tmpbuf;
	*lenp = (uint64_t)&opalcons_buffer.size;
}