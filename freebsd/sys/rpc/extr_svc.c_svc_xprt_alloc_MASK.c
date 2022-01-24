#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  xp_refs; int /*<<< orphan*/ * xp_p3; } ;
typedef  int /*<<< orphan*/  SVCXPRT_EXT ;
typedef  TYPE_1__ SVCXPRT ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

SVCXPRT *
FUNC2(void)
{
	SVCXPRT *xprt;
	SVCXPRT_EXT *ext;

	xprt = FUNC0(sizeof(SVCXPRT));
	ext = FUNC0(sizeof(SVCXPRT_EXT));
	xprt->xp_p3 = ext;
	FUNC1(&xprt->xp_refs, 1);

	return (xprt);
}