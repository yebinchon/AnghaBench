#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vmbus_xact_ctx {int dummy; } ;
struct vmbus_chanpkt_hdr {int dummy; } ;
struct TYPE_4__ {struct vmbus_xact_ctx* hs_xact_ctx; } ;
typedef  TYPE_1__ hv_kbd_sc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vmbus_chanpkt_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct vmbus_chanpkt_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct vmbus_xact_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(hv_kbd_sc *sc, struct vmbus_chanpkt_hdr *pkt)
{
	struct vmbus_xact_ctx *xact = sc->hs_xact_ctx;
	if (xact != NULL) {
		FUNC0(sc, "hvkbd is ready\n");
		FUNC3(xact, FUNC1(pkt),
		    FUNC2(pkt));
	}
}