#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* hpriv_p ;
struct TYPE_6__ {int /*<<< orphan*/  enableDelayedAck; } ;
struct TYPE_7__ {int /*<<< orphan*/  mtx; TYPE_1__ conf; int /*<<< orphan*/  sackTimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__* const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__* const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(const hpriv_p hpriv)
{
	FUNC1(&hpriv->mtx, MA_OWNED);
	if (!(FUNC0(&hpriv->sackTimer))) {
		/* If delayed ACK is disabled, send it now */
		if (!hpriv->conf.enableDelayedAck) {	/* ack now */
			FUNC4(hpriv, NULL);
			/* ng_pptpgre_xmit() drops the mutex */
			return;
		}
		/* ack later */
		FUNC3(hpriv);
		FUNC2(&hpriv->mtx);
		return;
	}
	FUNC2(&hpriv->mtx);
}