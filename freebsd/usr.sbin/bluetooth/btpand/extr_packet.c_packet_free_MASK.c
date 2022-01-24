#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_5__* chan; int /*<<< orphan*/  extlist; int /*<<< orphan*/  refcnt; } ;
typedef  TYPE_1__ packet_t ;
typedef  TYPE_1__ exthdr_t ;
struct TYPE_8__ {scalar_t__ refcnt; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  next ; 

void
FUNC4(packet_t *pkt)
{
	exthdr_t *eh;

	if (pkt->refcnt-- > 0)
		return;

	while ((eh = FUNC0(&pkt->extlist)) != NULL) {
		FUNC1(&pkt->extlist, next);
		FUNC3(eh);
	}

	pkt->chan->refcnt--;
	if (pkt->chan->refcnt == 0)
		FUNC2(pkt->chan);

	FUNC3(pkt);
}