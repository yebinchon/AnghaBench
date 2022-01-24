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
struct vmbus_xact {struct vmbus_xact* x_priv; struct vmbus_xact* x_resp0; int /*<<< orphan*/  x_req; int /*<<< orphan*/  x_req_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (struct vmbus_xact*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct vmbus_xact *xact)
{

	FUNC1(&xact->x_req_dma, xact->x_req);
	FUNC0(xact->x_resp0, M_DEVBUF);
	if (xact->x_priv != NULL)
		FUNC0(xact->x_priv, M_DEVBUF);
	FUNC0(xact, M_DEVBUF);
}